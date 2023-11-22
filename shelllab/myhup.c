/*
 * myhup.c - Sends a SIGHUP to itself, terminates when restarted.
 */
#include <signal.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <unistd.h>

int main() {
    if (kill(getpid(), SIGHUP) < 0) {
        perror("kill");
        exit(1);
    }
    exit(0);
}
