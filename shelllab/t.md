```bash
/bin/echo -e tsh\076 ./myspin1 \046
# -e 开启转义，\076 为 >，\046 为 &
```

SIGCHLD 的产生条件
1、子进程终止时。
2、子进程接收到 SIGSTOP 信号停止时。
3、子进程处在停止态，接收到 SIGCONT 后唤醒时。

The kill job command kills a job in the job list, or a process group by sending each relevant
process a SIGTERM signal. The job argument can be either a PID or a JID. 

Note that if you get a negative job argument, such as kill %-1 or kill -15213, your shell should kill the
process group of the job with a JID of %-JID, or of the job with a PID of -PID. If the process
group does not exist, your shell should print ”%JID: No such process group” or ”(PID): No such
process group”, where JID and PID should be replaced by the command line argument.

On the other hand, if the job argument is positive, your shell should kill the corresponding job. If the
job does not exist, your shell should print ”%JID: No such job” or ”(PID): No such process”.
Play with the reference shell to check the details and gain intuition.

# When to reap zombie processes?  

Reap before the foregroung job terminates or a user input is entered.

If any job terminates because it **receives a signal that it didn’t catch**, then tsh should recognize this event and print a message with the job’s PID and a description of the offending signal.

# How to run a program in foreground?

Fork a child process, set its group id, execve the program, wait for it to terminate.

# How to run a program in background?

Fork a child process, set its group id, execve the program, add it to the job list, print its pid and name, do not wait for it to terminate.

# How to fg a job? 

First find the job, then send SIGCONT to it and wait for it to terminate.

# How to bg a job?

First find the job, then send SIGCONT to it.

# Race condition

Do not assume that the child will still be running when the parent returns from the fork. 

Do not call `waitpid` in multiple places. 


# Hints

When you implement your signal handlers, be sure to send SIGINT and SIGTSTP signals to the entire foreground process group, using ”-pid” instead of ”pid” in the argument to the kill function. The driver program specifically tests for this error.

One of the tricky parts of the assignment is deciding on the allocation of work between the eval and sigchld handler functions when the shell is waiting for a foreground job to finish. For example with trace31 esepcially, you may need to think carefully when and where to update a job’s state.

In order to avoid deadlock, it is recommended to only invoke async-signal-safe functions in your handler. Please refer to Section 8.5.5 in your textbook for a full understanding. For your convenience, we have provided you with a lightweight safe I/O function sio put which reads a format string just like printf of C standard, formats it and prints it to the standard output. It supports two kinds of escaping characters, namely %d (to print an int) and %% (to print %). Its implementation lies in tsh.c in your handout. You can regard it as a handy and secure substitute for sio puts and sio putl.

In eval, the parent must use sigprocmask to block SIGCHLD, SIGINT, and SIGTSTP signals before it forks the child, and then unblock these signals, again using sigprocmask after it adds the child to the job list by calling addjob. Since children inherit the blocked vectors of their parents, the child must be sure to then unblock these signals before it execs the new program. The child should also restore the default handlers for the signals that are ignored by the shell. The parent needs to block signals in this way in order to avoid race conditions (e.g., the child is reaped by sigchld handler(and thus removed from the job list) before the parent calls addjob). Section 8.5.6 has details about the race conditions and how to block signals explicitly.

