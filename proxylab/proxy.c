#include <stdio.h>
#include <stdlib.h>

#include "cache.h"
#include "csapp.h"

#define MAXBUFFER 4096 /* Max temporary buffer size */

/* You won't lose style points for including this long line in your code */
static const char* user_agent_hdr =
    "User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:10.0.3) Gecko/20120305 "
    "Firefox/10.0.3\r\n";

void clienterror(int fd, char* cause, char* errnum, char* shortmsg,
                 char* longmsg);

/* Parse URL into hostname, pathname, and port
 * Supported format:
 * http://www.cmu.edu/hub/index.html
 * http://www.cmu.edu:8080/hub/index.html
 * www.cmu.edu/hub/index.html
 * www.cmu.edu:8080/hub/index.html
 */
int parse_url(char* url, char* hostname, char* pathname, char* port) {
    char* ptr = url;

    /* Check protocol */
    if (!strncasecmp(ptr, "http://", 7))
        ptr += 7;
    else if (!strncasecmp(ptr, "https://", 8))
        ptr += 8;

    /* Check hostname */
    while (*ptr != '/' && *ptr != ':' && *ptr != '\0') {
        *hostname++ = *ptr++;
    }
    *hostname = '\0';

    /* Check port */
    if (*ptr == ':') {
        ptr++;
        while (*ptr != '/' && *ptr != '\0') {
            *port++ = *ptr++;
        }
        *port = '\0';
    } else {
        strcpy(port, "80");
    }

    /* Check pathname */
    if (*ptr == '/') {
        while (*ptr != '\0') {
            *pathname++ = *ptr++;
        }
    }
    *pathname = '\0';

    return 0;
}

/* Read and parse the request sent from clientfd, and forward it to the server
 * specified in the request.
 */
void forward(int connfd) {
    rio_t rio_client;
    Rio_readinitb(&rio_client, connfd);

    char reqline[MAXLINE];
    char method[MAXBUFFER], url[MAXBUFFER], version[MAXBUFFER];

    /* Read request line */
    Rio_readlineb(&rio_client, reqline, MAXLINE);
    sscanf(reqline, "%s %s %s", method, url, version);

    /* Check method */
    if (strcasecmp(method, "GET")) {
        clienterror(connfd, method, "501", "Not Implemented",
                    "Proxy does not implement this method");
        return;
    }

    /* Check version */
    if (strcasecmp(version, "HTTP/1.0") && strcasecmp(version, "HTTP/1.1")) {
        clienterror(connfd, version, "400", "Bad Request",
                    "Proxy could not understand this version");
        return;
    }

    /* Parse URL */
    char hostname[MAXBUFFER], pathname[MAXBUFFER], port[MAXBUFFER];
    if (parse_url(url, hostname, pathname, port) < 0) {
        clienterror(connfd, url, "400", "Bad Request",
                    "Proxy could not parse this URL");
        return;
    }

    /* Read request headers */
    char reqhdr[MAXLINE];
    char fwd_reqhdr[MAXLINE];

    for (Rio_readlineb(&rio_client, reqhdr, MAXLINE); strcmp(reqhdr, "\r\n");
         Rio_readlineb(&rio_client, reqhdr, MAXLINE)) {
        if (!strncasecmp(reqhdr, "Host", 4)) {
            strcpy(hostname, reqhdr + 6);
            hostname[strlen(hostname) - 2] = '\0';
            char* ptr = strchr(hostname, ':');
            if (ptr) {
                *ptr = '\0';
                strcpy(port, ptr + 1);  // Maybe wrong
            }
        } else if (!strncasecmp(reqhdr, "User-Agent", 10) ||
                   !strncasecmp(reqhdr, "Connection", 10) ||
                   !strncasecmp(reqhdr, "Proxy-Connection", 16))
            continue;
        else
            strcat(fwd_reqhdr, reqhdr);
    }

    /* Construct request */
    char request[MAXLINE];
    snprintf(request, sizeof request, "GET %s HTTP/1.0\r\n", pathname);
    snprintf(request + strlen(request), sizeof request, "Host: %s\r\n",
             hostname);
    snprintf(request + strlen(request), sizeof request, "%s", user_agent_hdr);
    snprintf(request + strlen(request), sizeof request,
             "Connection: close\r\n");
    snprintf(request + strlen(request), sizeof request,
             "Proxy-Connection: close\r\n");
    strcat(request, fwd_reqhdr);
    strcat(request, "\r\n");

    cache_response(hostname, port, pathname, request, connfd);
}

void clienterror(int fd, char* cause, char* errnum, char* shortmsg,
                 char* longmsg) {
    char buf[MAXBUFFER] = "";
    char body[MAXBUF] = "";

    /* Build the HTTP response body */
    snprintf(body + strlen(body), sizeof body,
             "<html><title>Tiny Error</title>");
    snprintf(body + strlen(body), sizeof body, "<body bgcolor=ffffff>\r\n");
    snprintf(body + strlen(body), sizeof body, "%s: %s\r\n", errnum,
             shortmsg);
    snprintf(body + strlen(body), sizeof body, "<p>%s: %s\r\n", longmsg,
             cause);
    snprintf(body + strlen(body), sizeof body,
             "<hr><em>The Tiny Web server</em>\r\n");

    /* Print the HTTP response */
    sprintf(buf, "HTTP/1.0 %s %s\r\n", errnum, shortmsg);
    rio_writen(fd, buf, strlen(buf));
    sprintf(buf, "Content-type: text/html\r\n");
    rio_writen(fd, buf, strlen(buf));
    sprintf(buf, "Content-length: %d\r\n\r\n", (int)strlen(body));
    rio_writen(fd, buf, strlen(buf));
    rio_writen(fd, body, strlen(body));
}

void* thread(void* vargp) {
    int connfd = *((int*)vargp);
    Pthread_detach(pthread_self());
    Free(vargp);
    forward(connfd);
    Close(connfd);
    return NULL;
}

/* Listen for incoming connections on a specified port */
int main(int argc, char** argv) {
    /* Check command line args */
    if (argc != 2) {
        fprintf(stderr, "usage: %s <port>\n", argv[0]);
        exit(1);
    }

    char* port = argv[1];
    int listenfd = Open_listenfd(port);

    /* Ignore SIGPIPE */
    Signal(SIGPIPE, SIG_IGN);

    /* Init semaphores */
    Sem_init(&mutex, 0, 1);
    Sem_init(&w, 0, 1);
    readcnt = 0;

    while (1) {
        struct sockaddr_storage clientaddr;
        socklen_t clientlen = sizeof clientaddr;
        int* connfdp = Malloc(sizeof(int));
        *connfdp = Accept(listenfd, (SA*)&clientaddr, &clientlen);

        char client_hostname[MAXBUFFER], client_port[MAXBUFFER];
        Getnameinfo((SA*)&clientaddr, clientlen, client_hostname, MAXBUFFER,
                    client_port, MAXBUFFER, 0);

        pthread_t tid;
        Pthread_create(&tid, NULL, (void*)&thread, connfdp);
    }
    Close(listenfd);
}
