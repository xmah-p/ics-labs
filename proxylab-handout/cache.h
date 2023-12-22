#include "csapp.h"

/* Global variables */
extern int readcnt;    /* Initially = 0 */
extern sem_t mutex, w; /* Both initially = 1 */

void cache_response(char* hostname, char* port, char* pathname, char* request, int connfd);

void cache_fetch(char* hostname, char* port, char* request, int connfd);