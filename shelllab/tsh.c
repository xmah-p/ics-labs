/*
 * tsh - A tiny shell program with job control
 *
 * 杨艺欣    2200017768
 */
#include <assert.h>
#include <ctype.h>
#include <errno.h>
#include <fcntl.h>
#include <signal.h>
#include <stdarg.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <unistd.h>

/* Misc manifest constants */
#define MAXLINE 1024   /* max line size */
#define MAXARGS 128    /* max args on a command line */
#define MAXJOBS 16     /* max jobs at any point in time */
#define MAXJID 1 << 16 /* max job ID */

/* Job states */
#define UNDEF 0 /* undefined */
#define FG 1    /* running in foreground */
#define BG 2    /* running in background */
#define ST 3    /* stopped */

/*
 * Jobs states: FG (foreground), BG (background), ST (stopped)
 * Job state transitions and enabling actions:
 *     FG -> ST  : ctrl-z
 *     ST -> FG  : fg command
 *     ST -> BG  : bg command
 *     BG -> FG  : fg command
 * At most 1 job can be in the FG state.
 */

/* Parsing states */
#define ST_NORMAL 0x0  /* next token is an argument */
#define ST_INFILE 0x1  /* next token is the input file */
#define ST_OUTFILE 0x2 /* next token is the output file */

/* Global variables */
extern char** environ;   /* defined in libc */
char prompt[] = "tsh> "; /* command line prompt (DO NOT CHANGE) */
int verbose = 0;         /* if true, print additional output */
int nextjid = 1;         /* next job ID to allocate */
char sbuf[MAXLINE];      /* for composing sprintf messages */
int suspend = 1;         /* suspend the shell when fg job is running.
                          * should only be used by eval and builtin_fg,
                          * and should only be set zero by sigchld_handler
                          */

struct job_t {             /* The job struct */
    pid_t pid;             /* job PID */
    int jid;               /* job ID [1, 2, ...] */
    int state;             /* UNDEF, BG, FG, or ST */
    char cmdline[MAXLINE]; /* command line */
};
struct job_t job_list[MAXJOBS]; /* The job list */

struct cmdline_tokens {
    int argc;            /* Number of arguments */
    char* argv[MAXARGS]; /* The arguments list */
    char* infile;        /* The input file */
    char* outfile;       /* The output file */
    enum builtins_t {    /* Indicates if argv[0] is a builtin command */
                      BUILTIN_NONE,
                      BUILTIN_QUIT,
                      BUILTIN_JOBS,
                      BUILTIN_BG,
                      BUILTIN_FG,
                      BUILTIN_KILL,
                      BUILTIN_NOHUP
    } builtins;
};

/* End global variables */

/* Function prototypes */

void eval(char* cmdline);

void sigchld_handler(int sig);
void sigtstp_handler(int sig);
void sigint_handler(int sig);

void builtin_bg(char* id);
void builtin_fg(char* id);
void builtin_kill(char* id);

/* Here are helper routines that we've provided for you */
int parseline(const char* cmdline, struct cmdline_tokens* tok);
void sigquit_handler(int sig);

void clearjob(struct job_t* job);
void initjobs(struct job_t* job_list);
int maxjid(struct job_t* job_list);
int addjob(struct job_t* job_list, pid_t pid, int state, char* cmdline);
int deletejob(struct job_t* job_list, pid_t pid);
pid_t fgpid(struct job_t* job_list);
struct job_t* getjobpid(struct job_t* job_list, pid_t pid);
struct job_t* getjobjid(struct job_t* job_list, int jid);
int pid2jid(pid_t pid);
void listjobs(struct job_t* job_list, int output_fd);
struct job_t* getjobid(struct job_t* job_list, char* id);

void usage(void);
void unix_error(char* msg);
void app_error(char* msg);
ssize_t sio_puts(char s[]);
ssize_t sio_putl(long v);
ssize_t sio_put(const char* fmt, ...);
void sio_error(char s[]);

/* Wrapper functions */

/* Wrappers for Unix signal functions */
typedef void handler_t(int);
handler_t* Signal(int signum, handler_t* handler);

void Sigprocmask(int how, const sigset_t* set, sigset_t* oldset);

void Sigemptyset(sigset_t* set);

void Sigfillset(sigset_t* set);

void Sigaddset(sigset_t* set, int signum);

int Sigsuspend(const sigset_t* set);

/* Wrapper for Unix I/O routines */
int Open(const char* filename, int flags);

int Dup2(int fd1, int fd2);

/* Wrappers for Unix process control functions */
pid_t Fork(void);

void Execve(const char* filename, char* const argv[], char* const envp[]);

void Kill(pid_t pid, int signum);

void Setpgid(pid_t pid, pid_t pgid);

/* Wrappers for other functions */
void Addjob(struct job_t* job_list, pid_t pid, int state, char* cmdline);

void Deletejob(struct job_t* job_list, struct job_t* job);

/* Misc helper functions */

int input_fd(const char* filename);

int output_fd(const char* filename);

/*
 * main - The shell's main routine
 */
int main(int argc, char** argv) {
    char c;
    char cmdline[MAXLINE]; /* cmdline for fgets */
    int emit_prompt = 1;   /* emit prompt (default) */

    /* Redirect stderr to stdout (so that driver will get all output
     * on the pipe connected to stdout) */
    Dup2(1, 2);

    /* Parse the command line */
    while ((c = getopt(argc, argv, "hvp")) != EOF) {
        switch (c) {
            case 'h': /* print help message */ usage(); break;
            case 'v': /* emit additional diagnostic info */ verbose = 1; break;
            case 'p':            /* don't print a prompt */
                emit_prompt = 0; /* handy for automatic testing */
                break;
            default: usage();
        }
    }

    /* Install the signal handlers */

    /* These are the ones you will need to implement */
    Signal(SIGINT, sigint_handler);   /* ctrl-c */
    Signal(SIGTSTP, sigtstp_handler); /* ctrl-z */
    Signal(SIGCHLD, sigchld_handler); /* Terminated or stopped child */
    Signal(SIGTTIN, SIG_IGN);
    Signal(SIGTTOU, SIG_IGN);

    /* This one provides a clean way to kill the shell */
    Signal(SIGQUIT, sigquit_handler);

    /* Initialize the job list */
    initjobs(job_list);

    /* Execute the shell's read/eval loop */
    while (1) {
        if (emit_prompt) {
            printf("%s", prompt);
            fflush(stdout);
        }
        if ((fgets(cmdline, MAXLINE, stdin) == NULL) && ferror(stdin))
            app_error("fgets error");
        if (feof(stdin)) {
            /* End of file (ctrl-d) */
            printf("\n");
            fflush(stdout);
            fflush(stderr);
            exit(0);
        }

        /* Remove the trailing newline */
        cmdline[strlen(cmdline) - 1] = '\0';

        /* Evaluate the command line */
        eval(cmdline);

        fflush(stdout);
        fflush(stdout);
    }

    exit(0); /* control never reaches here */
}

/*
 * eval - Evaluate the command line that the user has just typed in
 *
 * If the user has requested a built-in command (quit, jobs, bg or fg)
 * then execute it immediately. Otherwise, fork a child process and
 * run the job in the context of the child. If the job is running in
 * the foreground, wait for it to terminate and then return.  Note:
 * each child process must have a unique process group ID so that our
 * background children don't receive SIGINT (SIGTSTP) from the kernel
 * when we type ctrl-c (ctrl-z) at the keyboard.
 */
void eval(char* cmdline) {
    int bg; /* should the job run in bg or fg? */
    struct cmdline_tokens tok;
    pid_t pid;
    char** argv;

    sigset_t mask_three, prev_three;

    Sigemptyset(&mask_three);
    Sigaddset(&mask_three, SIGCHLD);
    Sigaddset(&mask_three, SIGINT);
    Sigaddset(&mask_three, SIGTSTP);

    Signal(SIGCHLD, sigchld_handler);
    Signal(SIGINT, sigint_handler);
    Signal(SIGTSTP, sigtstp_handler);

    /* Parse command line */
    bg = parseline(cmdline, &tok);
    argv = tok.argv;

    if (bg == -1) /* parsing error */
        return;
    if (tok.argv[0] == NULL) /* ignore empty lines */
        return;

    switch (tok.builtins) {
        case BUILTIN_NONE: break;
        case BUILTIN_QUIT: exit(0);
        case BUILTIN_JOBS: listjobs(job_list, output_fd(tok.outfile)); return;
        case BUILTIN_BG: builtin_bg(tok.argv[1]); return;
        case BUILTIN_FG: builtin_fg(tok.argv[1]); return;
        case BUILTIN_KILL: builtin_kill(tok.argv[1]); return;
        case BUILTIN_NOHUP:
            Signal(SIGHUP, SIG_IGN);
            argv++;
            break;
    }

    Sigprocmask(SIG_BLOCK, &mask_three,
                &prev_three); /* Block SIGCHLD, SIGINT and SIGTSTP */

    suspend = 1;

    /* Create a new job */
    if ((pid = Fork()) == 0) {
        Setpgid(0, 0);
        Dup2(input_fd(tok.infile), STDIN_FILENO);
        Dup2(output_fd(tok.outfile), STDOUT_FILENO);
        Signal(SIGCHLD, SIG_DFL);
        Signal(SIGINT, SIG_DFL);
        Signal(SIGTSTP, SIG_DFL);
        Sigprocmask(SIG_SETMASK, &prev_three, NULL);
        Execve(argv[0], argv, environ);
    }

    /* Foreground */
    if (!bg) {
        Addjob(job_list, pid, FG,
               cmdline); /* All signals are blocked inside the wrapper */
        while (suspend) {
            Sigsuspend(&prev_three);
        }
    }

    /* Background */
    else if (bg) {
        Addjob(job_list, pid, BG, cmdline);
    }

    Sigprocmask(SIG_SETMASK, &prev_three,
                NULL); /* Unblock SIGCHLD, SIGINT and SIGTSTP */

    return;
}

/*
 * parseline - Parse the command line and build the argv array.
 *
 * Parameters:
 *   cmdline:  The command line, in the form:
 *
 *                command [arguments...] [< infile] [> oufile] [&]
 *
 *   tok:      Pointer to a cmdline_tokens structure. The elements of this
 *             structure will be populated with the parsed tokens. Characters
 *             enclosed in single or double quotes are treated as a single
 *             argument.
 * Returns:
 *   1:        if the user has requested a BG job
 *   0:        if the user has requested a FG job
 *  -1:        if cmdline is incorrectly formatted
 *
 * Note:       The string elements of tok (e.g., argv[], infile, outfile)
 *             are statically allocated inside parseline() and will be
 *             overwritten the next time this function is invoked.
 */
int parseline(const char* cmdline, struct cmdline_tokens* tok) {
    static char array[MAXLINE];        /* holds local copy of command line */
    const char delims[10] = " \t\r\n"; /* argument delimiters (white-space) */
    char* buf = array;                 /* ptr that traverses command line */
    char* next;                        /* ptr to the end of the current arg */
    char* endbuf;                      /* ptr to end of cmdline string */
    int is_bg;                         /* background job? */

    int parsing_state; /* indicates if the next token is the
                          input or output file */

    if (cmdline == NULL) {
        (void)fprintf(stderr, "Error: command line is NULL\n");
        return -1;
    }

    (void)strncpy(buf, cmdline, MAXLINE);
    endbuf = buf + strlen(buf);

    tok->infile = NULL;
    tok->outfile = NULL;

    /* Build the argv list */
    parsing_state = ST_NORMAL;
    tok->argc = 0;

    while (buf < endbuf) {
        /* Skip the white-spaces */
        buf += strspn(buf, delims);
        if (buf >= endbuf) break;

        /* Check for I/O redirection specifiers */
        if (*buf == '<') {
            if (tok->infile) {
                (void)fprintf(stderr, "Error: Ambiguous I/O redirection\n");
                return -1;
            }
            parsing_state |= ST_INFILE;
            buf++;
            continue;
        }
        if (*buf == '>') {
            if (tok->outfile) {
                (void)fprintf(stderr, "Error: Ambiguous I/O redirection\n");
                return -1;
            }
            parsing_state |= ST_OUTFILE;
            buf++;
            continue;
        }

        if (*buf == '\'' || *buf == '\"') {
            /* Detect quoted tokens */
            buf++;
            next = strchr(buf, *(buf - 1));
        } else {
            /* Find next delimiter */
            next = buf + strcspn(buf, delims);
        }

        if (next == NULL) {
            /* Returned by strchr(); this means that the closing
               quote was not found. */
            (void)fprintf(stderr, "Error: unmatched %c.\n", *(buf - 1));
            return -1;
        }

        /* Terminate the token */
        *next = '\0';

        /* Record the token as either the next argument or the i/o file */
        switch (parsing_state) {
            case ST_NORMAL: tok->argv[tok->argc++] = buf; break;
            case ST_INFILE: tok->infile = buf; break;
            case ST_OUTFILE: tok->outfile = buf; break;
            default:
                (void)fprintf(stderr, "Error: Ambiguous I/O redirection\n");
                return -1;
        }
        parsing_state = ST_NORMAL;

        /* Check if argv is full */
        if (tok->argc >= MAXARGS - 1) break;

        buf = next + 1;
    }

    if (parsing_state != ST_NORMAL) {
        (void)fprintf(stderr,
                      "Error: must provide file name for redirection\n");
        return -1;
    }

    /* The argument list must end with a NULL pointer */
    tok->argv[tok->argc] = NULL;

    if (tok->argc == 0) /* ignore blank line */
        return 1;

    if (!strcmp(tok->argv[0], "quit")) { /* quit command */
        tok->builtins = BUILTIN_QUIT;
    } else if (!strcmp(tok->argv[0], "jobs")) { /* jobs command */
        tok->builtins = BUILTIN_JOBS;
    } else if (!strcmp(tok->argv[0], "bg")) { /* bg command */
        tok->builtins = BUILTIN_BG;
    } else if (!strcmp(tok->argv[0], "fg")) { /* fg command */
        tok->builtins = BUILTIN_FG;
    } else if (!strcmp(tok->argv[0], "kill")) { /* kill command */
        tok->builtins = BUILTIN_KILL;
    } else if (!strcmp(tok->argv[0], "nohup")) { /* kill command */
        tok->builtins = BUILTIN_NOHUP;
    } else {
        tok->builtins = BUILTIN_NONE;
    }

    /* Should the job run in the background? */
    if ((is_bg = (*tok->argv[tok->argc - 1] == '&')) != 0)
        tok->argv[--tok->argc] = NULL;

    return is_bg;
}

/*****************
 * Signal handlers
 *****************/

/*
 * sigchld_handler - The kernel sends a SIGCHLD to the shell whenever
 *     a child job terminates (becomes a zombie), or stops because it
 *     received a SIGSTOP, SIGTSTP, SIGTTIN or SIGTTOU signal. The
 *     handler reaps all available zombie children, but doesn't wait
 *     for any other currently running children to terminate.
 */
void sigchld_handler(int sig) {
    int olderrno = errno;
    int status = 0;
    pid_t pid;
    sigset_t mask_all, prev_all;
    struct job_t* job;

    Sigfillset(&mask_all);
    if (verbose) sio_put("sigchld_handler: entering\n");

    while ((pid = waitpid(-1, &status, WUNTRACED | WNOHANG | WCONTINUED)) >
           0) {
        Sigprocmask(SIG_BLOCK, &mask_all, &prev_all);
        job = getjobpid(job_list, pid);
        if (job->state == FG) suspend = 0; /* set suspend */

        if (WIFEXITED(status)) {
            if (verbose)
                sio_put(
                    "sigchld_handler: Job [%d] (%d) terminates OK (status "
                    "%d)\n",
                    job->jid, job->pid, WEXITSTATUS(status));
            Deletejob(job_list, job);
        }

        else if (WIFSIGNALED(status)) {
            sio_put("Job [%d] (%d) terminated by signal %d\n", pid2jid(pid),
                    pid, WTERMSIG(status));
            Deletejob(job_list, job);
        }

        else if (WIFSTOPPED(status)) {
            job->state = ST;
            sio_put("Job [%d] (%d) stopped by signal %d\n", pid2jid(pid), pid,
                    WSTOPSIG(status));
        }

        else if (WIFCONTINUED(status)) {
            job->state = BG;
        }

        Sigprocmask(SIG_SETMASK, &prev_all, NULL);
    }

    /* ECHILD and EINTR are normal, other errors should be reported */
    if (errno && errno != ECHILD && errno != EINTR) {
        sio_put("waitpid error: %d ", errno);
        sio_put(strerror(errno));
        sio_error("\n");
    }
    errno = olderrno;

    if (verbose) sio_put("sigchld_handler: exiting\n");
}

/*
 * sigint_handler - The kernel sends a SIGINT to the shell whenver the
 *    user types ctrl-c at the keyboard.  Catch it and send it along
 *    to the foreground job.
 */
void sigint_handler(int sig) {
    int olderrno = errno;
    pid_t pid = fgpid(job_list);

    if (verbose) sio_put("sigint_handler: entering\n");
    Kill(-pid, SIGINT);
    if (verbose) sio_put("sigint_handler: Job (%d) killed\n", pid);

    errno = olderrno;
    if (verbose) sio_put("sigint_handler: exiting\n");
}

/*
 * sigtstp_handler - The kernel sends a SIGTSTP to the shell whenever
 *     the user types ctrl-z at the keyboard. Catch it and suspend the
 *     foreground job by sending it a SIGTSTP.
 */
void sigtstp_handler(int sig) {
    int olderrno = errno;
    pid_t pid = fgpid(job_list);

    if (verbose) sio_put("sigtstp_handler: entering\n");
    Kill(-pid, SIGTSTP);

    errno = olderrno;
    if (verbose) sio_put("sigtstp_handler: exiting\n");
}

/*
 * sigquit_handler - The driver program can gracefully terminate the
 *    child shell by sending it a SIGQUIT signal.
 */
void sigquit_handler(int sig) {
    sio_error("Terminating after receipt of SIGQUIT signal\n");
}

/*********************
 * End signal handlers
 *********************/

/********************
 *** Builtin cmds ***
 ********************/

/*
 * Builtin bg command
 * Usage: bg job
 * Restarts job by sending it a SIGCONT, and then runs it in the bg
 * id can be either PID or JID
 */
void builtin_bg(char* id) {
    sigset_t mask_all, prev_all;
    struct job_t* job;

    Sigfillset(&mask_all);

    Sigprocmask(SIG_BLOCK, &mask_all, &prev_all);
    if ((job = getjobid(job_list, id)) == NULL) return;
    Kill(-job->pid, SIGCONT);
    job->state = BG;
    Sigprocmask(SIG_SETMASK, &prev_all, NULL);

    printf("[%d] (%d) %s\n", job->jid, job->pid, job->cmdline);
}

/*
 * Builtin fg command
 * Usage: fg job
 * Restarts job by sending it a SIGCONT, and then runs it in the fg
 * id can be either PID or JID
 */
void builtin_fg(char* id) {
    sigset_t mask_all, prev_all;
    struct job_t* job;

    Sigfillset(&mask_all);

    Sigprocmask(SIG_BLOCK, &mask_all, &prev_all);
    if ((job = getjobid(job_list, id)) == NULL) return;
    Kill(-job->pid, SIGCONT);
    job->state = FG;
    suspend = 1;
    while (suspend) Sigsuspend(&prev_all);
    Sigprocmask(SIG_SETMASK, &prev_all, NULL);
}

/*
 * Builtin kill command
 * Usage: kill job
 * Kills a job or a process group by sending each of its process a SIGTERM.
 * id can be either PID or JID. Negative id will be interpreted as its absolute
 * value.
 */
void builtin_kill(char* id) {
    sigset_t mask_all, prev_all;
    struct job_t* job;

    Sigfillset(&mask_all);

    Sigprocmask(SIG_BLOCK, &mask_all, &prev_all);
    if ((job = getjobid(job_list, id)) == NULL) return;
    Kill(-job->pid, SIGTERM);

    Sigprocmask(SIG_SETMASK, &prev_all, NULL);
}

/************************
 *** End builtin cmds ***
 ************************/

/***********************************************
 * Helper routines that manipulate the job list
 **********************************************/

/* clearjob - Clear the entries in a job struct */
void clearjob(struct job_t* job) {
    job->pid = 0;
    job->jid = 0;
    job->state = UNDEF;
    job->cmdline[0] = '\0';
}

/* initjobs - Initialize the job list */
void initjobs(struct job_t* job_list) {
    int i;

    for (i = 0; i < MAXJOBS; i++) clearjob(&job_list[i]);
}

/* maxjid - Returns largest allocated job ID */
int maxjid(struct job_t* job_list) {
    int i, max = 0;

    for (i = 0; i < MAXJOBS; i++)
        if (job_list[i].jid > max) max = job_list[i].jid;
    return max;
}

/* addjob - Add a job to the job list */
int addjob(struct job_t* job_list, pid_t pid, int state, char* cmdline) {
    int i;

    if (pid < 1) return 0;

    for (i = 0; i < MAXJOBS; i++) {
        if (job_list[i].pid == 0) {
            job_list[i].pid = pid;
            job_list[i].state = state;
            job_list[i].jid = nextjid++;
            if (nextjid > MAXJOBS) nextjid = 1;
            strcpy(job_list[i].cmdline, cmdline);
            if (verbose) {
                printf("Added job [%d] %d %s\n", job_list[i].jid,
                       job_list[i].pid, job_list[i].cmdline);
            }
            if (state == BG) {
                /* [1] (1794) ./myspin1 10 & */
                printf("[%d] (%d) %s\n", job_list[i].jid, job_list[i].pid,
                       job_list[i].cmdline);
            }
            return 1;
        }
    }
    printf("Tried to create too many jobs\n");
    return 0;
}

/* deletejob - Delete a job whose PID=pid from the job list */
int deletejob(struct job_t* job_list, pid_t pid) {
    int i;

    if (pid < 1) return 0;

    for (i = 0; i < MAXJOBS; i++) {
        if (job_list[i].pid == pid) {
            clearjob(&job_list[i]);
            nextjid = maxjid(job_list) + 1;
            return 1;
        }
    }
    return 0;
}

/* fgpid - Return PID of current foreground job, 0 if no such job */
pid_t fgpid(struct job_t* job_list) {
    int i;

    for (i = 0; i < MAXJOBS; i++)
        if (job_list[i].state == FG) return job_list[i].pid;
    return 0;
}

/* getjobpid  - Find a job (by PID) on the job list */
struct job_t* getjobpid(struct job_t* job_list, pid_t pid) {
    int i;

    if (pid < 1) return NULL;
    for (i = 0; i < MAXJOBS; i++)
        if (job_list[i].pid == pid) return &job_list[i];
    return NULL;
}

/* getjobjid  - Find a job (by JID) on the job list */
struct job_t* getjobjid(struct job_t* job_list, int jid) {
    int i;

    if (jid < 1) return NULL;
    for (i = 0; i < MAXJOBS; i++)
        if (job_list[i].jid == jid) return &job_list[i];
    return NULL;
}

/* pid2jid - Map process ID to job ID */
int pid2jid(pid_t pid) {
    int i;

    if (pid < 1) return 0;
    for (i = 0; i < MAXJOBS; i++)
        if (job_list[i].pid == pid) {
            return job_list[i].jid;
        }
    return 0;
}

/* listjobs - Print the job list */
void listjobs(struct job_t* job_list, int output_fd) {
    int i;
    char buf[MAXLINE << 2];

    for (i = 0; i < MAXJOBS; i++) {
        memset(buf, '\0', MAXLINE);
        if (job_list[i].pid != 0) {
            sprintf(buf, "[%d] (%d) ", job_list[i].jid, job_list[i].pid);
            if (write(output_fd, buf, strlen(buf)) < 0) {
                fprintf(stderr, "Error writing to output file\n");
                exit(1);
            }
            memset(buf, '\0', MAXLINE);
            switch (job_list[i].state) {
                case BG: sprintf(buf, "Running    "); break;
                case FG: sprintf(buf, "Foreground "); break;
                case ST: sprintf(buf, "Stopped    "); break;
                default:
                    sprintf(buf, "listjobs: Internal error: job[%d].state=%d ",
                            i, job_list[i].state);
            }
            if (write(output_fd, buf, strlen(buf)) < 0) {
                fprintf(stderr, "Error writing to output file\n");
                exit(1);
            }
            memset(buf, '\0', MAXLINE);
            sprintf(buf, "%s\n", job_list[i].cmdline);
            if (write(output_fd, buf, strlen(buf)) < 0) {
                fprintf(stderr, "Error writing to output file\n");
                exit(1);
            }
        }
    }
}

/*
 * getjobid
 * Get job by its pid or jid
 * Return NULL and print error message if not found
 */
struct job_t* getjobid(struct job_t* job_list, char* id) {
    int pid, jid;
    struct job_t* job;
    if (id[0] == '%') {
        jid = atoi(id + 1);
        if (jid < 0) {
            job = getjobjid(job_list, -jid);
            if (!job) {
                printf("%s: No such process group\n", id);
                return NULL;
            }
        } else {
            job = getjobjid(job_list, jid);
            if (!job) {
                printf("%s: No such job\n", id);
                return NULL;
            }
        }
    } else {
        pid = atoi(id);
        if (pid < 0) {
            job = getjobpid(job_list, -pid);
            if (!job) {
                printf("(%s): No such process group\n", id);
                return NULL;
            }
        } else {
            job = getjobjid(job_list, pid);
            if (!job) {
                printf("(%s): No such process\n", id);
                return NULL;
            }
        }
    }
    return job;
}

/******************************
 * end job list helper routines
 ******************************/

/***********************
 * Other helper routines
 ***********************/

/*
 * usage - print a help message
 */
void usage(void) {
    printf("Usage: shell [-hvp]\n");
    printf("   -h   print this message\n");
    printf("   -v   print additional diagnostic information\n");
    printf("   -p   do not emit a command prompt\n");
    exit(1);
}

/*
 * unix_error - unix-style error routine
 */
void unix_error(char* msg) {
    fprintf(stdout, "%s: %s\n", msg, strerror(errno));
    exit(1);
}

/*
 * app_error - application-style error routine
 */
void app_error(char* msg) {
    fprintf(stdout, "%s\n", msg);
    exit(1);
}

/* Private sio_functions */
/* sio_reverse - Reverse a string (from K&R) */
static void sio_reverse(char s[]) {
    int c, i, j;

    for (i = 0, j = strlen(s) - 1; i < j; i++, j--) {
        c = s[i];
        s[i] = s[j];
        s[j] = c;
    }
}

/* sio_ltoa - Convert long to base b string (from K&R) */
static void sio_ltoa(long v, char s[], int b) {
    int c, i = 0;

    do {
        s[i++] = ((c = (v % b)) < 10) ? c + '0' : c - 10 + 'a';
    } while ((v /= b) > 0);
    s[i] = '\0';
    sio_reverse(s);
}

/* sio_strlen - Return length of string (from K&R) */
static size_t sio_strlen(const char s[]) {
    int i = 0;

    while (s[i] != '\0') ++i;
    return i;
}

/* sio_copy - Copy len chars from fmt to s (by Ding Rui) */
void sio_copy(char* s, const char* fmt, size_t len) {
    if (!len) return;

    for (size_t i = 0; i < len; i++) s[i] = fmt[i];
}

/* Public Sio functions */
ssize_t sio_puts(char s[]) /* Put string */
{
    return write(STDOUT_FILENO, s, sio_strlen(s));
}

ssize_t sio_putl(long v) /* Put long */
{
    char s[128];

    sio_ltoa(v, s, 10); /* Based on K&R itoa() */
    return sio_puts(s);
}

ssize_t sio_put(const char* fmt,
                ...)  // Put to the console. only understands %d
{
    va_list ap;
    char str[MAXLINE];  // formatted string
    char arg[128];
    const char* mess = "sio_put: Line too long!\n";
    int i = 0, j = 0;
    int sp = 0;
    int v;

    if (fmt == 0) return -1;

    va_start(ap, fmt);
    while (fmt[j]) {
        if (fmt[j] != '%') {
            j++;
            continue;
        }

        sio_copy(str + sp, fmt + i, j - i);
        sp += j - i;

        switch (fmt[j + 1]) {
            case 0:
                va_end(ap);
                if (sp >= MAXLINE) {
                    write(STDOUT_FILENO, mess, sio_strlen(mess));
                    return -1;
                }

                str[sp] = 0;
                return write(STDOUT_FILENO, str, sp);

            case 'd':
                v = va_arg(ap, int);
                sio_ltoa(v, arg, 10);
                sio_copy(str + sp, arg, sio_strlen(arg));
                sp += sio_strlen(arg);
                i = j + 2;
                j = i;
                break;

            case '%':
                sio_copy(str + sp, "%", 1);
                sp += 1;
                i = j + 2;
                j = i;
                break;

            default:
                sio_copy(str + sp, fmt + j, 2);
                sp += 2;
                i = j + 2;
                j = i;
                break;
        }
    }  // end while

    sio_copy(str + sp, fmt + i, j - i);
    sp += j - i;

    va_end(ap);
    if (sp >= MAXLINE) {
        write(STDOUT_FILENO, mess, sio_strlen(mess));
        return -1;
    }

    str[sp] = 0;
    return write(STDOUT_FILENO, str, sp);
}

void sio_error(char s[]) /* Put error message and exit */
{
    sio_puts(s);
    _exit(1);
}

/* input_fd - Return the file descriptor of filename as input src */
int input_fd(const char* filename) {
    if (filename) return Open(filename, O_RDONLY);
    return STDIN_FILENO;
}

/* output_fd - Return the file descriptor of filename as output dest */
int output_fd(const char* filename) {
    if (filename) return Open(filename, O_WRONLY | O_CREAT);
    return STDOUT_FILENO;
}

/******************************
 * end other helper functions
 ******************************/

/*********************
 * Wrapper functions
 *********************/

/*
 * Signal - wrapper for the sigaction function
 */
handler_t* Signal(int signum, handler_t* handler) {
    struct sigaction action, old_action;

    action.sa_handler = handler;
    Sigemptyset(&action.sa_mask); /* block sigs of type being handled */
    action.sa_flags = SA_RESTART; /* restart syscalls if possible */

    if (sigaction(signum, &action, &old_action) < 0)
        unix_error("Signal error");
    return (old_action.sa_handler);
}

/* Sigprocmask - wrapper for sigprocmask */
void Sigprocmask(int how, const sigset_t* set, sigset_t* oldset) {
    if (sigprocmask(how, set, oldset) < 0) sio_error("Sigprocmask error");
    return;
}

/* Sigemptyset - wrapper for sigemptyset */
void Sigemptyset(sigset_t* set) {
    if (sigemptyset(set) < 0) sio_error("Sigemptyset error");
    return;
}

/* Sigfillset - wrapper for sigfillset */
void Sigfillset(sigset_t* set) {
    if (sigfillset(set) < 0) sio_error("Sigfillset error");
    return;
}

/* Sigaddset - wrapper for sigaddset */
void Sigaddset(sigset_t* set, int signum) {
    if (sigaddset(set, signum) < 0) sio_error("Sigaddset error");
    return;
}

/* Sigsuspend - wrapper for sigsuspend */
int Sigsuspend(const sigset_t* set) {
    int rc = sigsuspend(set); /* always returns -1 */
    if (errno != EINTR) sio_error("Sigsuspend error");
    return rc;
}

/* Open - wrapper for open */
int Open(const char* filename, int flags) {
    int ret;
    if ((ret = open(filename, flags)) < 0) sio_error("Open error");
    return ret;
}

/* Dup2 - wrapper for dup2 */
int Dup2(int fd1, int fd2) {
    int rc;
    if ((rc = dup2(fd1, fd2)) < 0) sio_error("Dup2 error");
    return rc;
}

/* Fork - wrapper for fork */
pid_t Fork(void) {
    pid_t pid;
    if ((pid = fork()) < 0) sio_error("Fork error");
    return pid;
}

/* Execve - wrapper for execve */
void Execve(const char* filename, char* const argv[], char* const envp[]) {
    if (execve(filename, argv, envp) < 0) {
        sio_puts(argv[0]);
        sio_error(": Command not found\n");
    }
}

/* Kill - wrapper for kill */
void Kill(pid_t pid, int signum) {
    int rc;
    if ((rc = kill(pid, signum)) < 0) sio_error("Kill error");
}

/* Setpgid - wrapper for setpgid */
void Setpgid(pid_t pid, pid_t pgid) {
    int rc;
    if ((rc = setpgid(pid, pgid)) < 0) sio_error("Setpgid error");
    return;
}

/* Addjob - wrapper for addjob */
void Addjob(struct job_t* job_list, pid_t pid, int state, char* cmdline) {
    sigset_t mask_all, prev_all;
    Sigfillset(&mask_all);
    Sigprocmask(SIG_BLOCK, &mask_all, &prev_all);
    if (!addjob(job_list, pid, state, cmdline)) sio_error("addjob error");
    Sigprocmask(SIG_SETMASK, &prev_all, NULL);
}

/*
 * Deletejob - wrapper for deletejob
 * Delete job from job_list
 * Should only be called by sigchld_handler
 */
void Deletejob(struct job_t* job_list, struct job_t* job) {
    if (verbose) {
        sio_put("sigchld_handler: Job [%d] (%d) deleted\n", job->jid,
                job->pid);
    }
    if (!deletejob(job_list, job->pid)) {
        sio_error("deletejob error");
    }
}
