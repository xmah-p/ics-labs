#include "cache.h"

#include "csapp.h"

/* Recommended max cache and object sizes */
#define MAX_CACHE_SIZE 1049000
#define MAX_OBJECT_SIZE 102400
#define MAX_CACHE_LINE 10

typedef struct {
    char hostname[MAXLINE];
    char port[MAXLINE];
    char pathname[MAXLINE];
    char content[MAX_OBJECT_SIZE];
    size_t size;
    unsigned int lru;
} Cache;

/* Global variables */
int readcnt;    /* Initially = 0 */
sem_t mutex, w; /* Both initially = 1 */

static Cache cache[MAX_CACHE_LINE] = {};
static unsigned int lrucnt = 0;

/* Check if hostname, port, pathname match */
static int match(char* hostname, char* port, char* pathname, Cache* cache) {
    return !strcasecmp(hostname, cache->hostname) &&
           !strcasecmp(port, cache->port) &&
           !strcasecmp(pathname, cache->pathname);
}

void cache_response(char* hostname, char* port, char* pathname, char* request,
                    int connfd) {
    // printf("Cache response\n");
    /* Retrieve from cache */
    P(&mutex);
    readcnt++;
    if (readcnt == 1) /* First in */
        P(&w);
    V(&mutex);

    /* Critical section */
    /* Reading happens */
    for (int i = 0; i < MAX_CACHE_LINE; i++) {
        if (match(hostname, port, pathname, &cache[i])) {
            // printf("Cache hit!\n");
            // printf("%s", cache[i].content);
            // printf("%lu\n", cache[i].size);
            cache[i].lru = ++lrucnt;
            Rio_writen(connfd, cache[i].content, cache[i].size);
            return;
        }
    }

    // printf("Cache miss!\n");

    P(&mutex);
    readcnt--;
    if (readcnt == 0) V(&w);
    V(&mutex);

    /* Cache miss */
    /* Send request to server */
    rio_t rio_server;
    int clientfd = Open_clientfd(hostname, port);
    Rio_readinitb(&rio_server, clientfd);
    Rio_writen(clientfd, request, strlen(request));

    /* Forward response to client */
    char response[MAX_OBJECT_SIZE];
    char buf[MAXLINE];
    int n;
    size_t size = 0;
    while ((n = Rio_readlineb(&rio_server, buf, MAXLINE)) != 0) {
        Rio_writen(connfd, buf, n);
        if (size + n < MAX_OBJECT_SIZE) memcpy(response + size, buf, n);
        size += n;
    }
    Close(clientfd);
    // printf("forwarded %lu bytes\n", size);
    // printf("response is\n%s", response);

    P(&w);
    /* Critical section */
    /* Writing happens */
    /* Cache eviction */
    int min = 0;
    for (int i = 0; i < MAX_CACHE_LINE; i++) {
        if (cache[i].size == 0) {
            min = i;
            break;
        }
        if (cache[i].lru < cache[min].lru) min = i;
    }
    if (size < MAX_OBJECT_SIZE) {
        strcpy(cache[min].hostname, hostname);
        strcpy(cache[min].port, port);
        strcpy(cache[min].pathname, pathname);
        memcpy(cache[min].content, response, size);
        // printf("cache[min].content is\n%s", cache[min].content);
        cache[min].size = size;
        cache[min].lru = ++lrucnt;
    }
    V(&w);
}