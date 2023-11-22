/*
 * myintp.c - Sends a SIGINT to its parent (the shell)
 *
 * A correctly written shell will echo the SIGINT back to the child.
 */
#include <signal.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <unistd.h>

#include "config.h"

void sigalrm_handler() { exit(0); }

int main() {
    signal(SIGALRM, sigalrm_handler);
    alarm(JOB_TIMEOUT);

    if (kill(getppid(), SIGINT) < 0) {
        perror("kill");
        exit(1);
    }

    while (1)
        ;
    exit(0);
}
