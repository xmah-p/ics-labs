#include "cache.h"

#include "csapp.h"

/* Recommended max cache and object sizes */
#define MAX_CACHE_SIZE 1049000
#define MAX_OBJECT_SIZE 102400
#define MAX_CACHE_LINE 10



// void cache_fetch(char* hostname, char* port, char* request, int connfd) {
//     /* Send request to server */
//     rio_t rio_server;
//     int clientfd = Open_clientfd(hostname, port);
//     Rio_readinitb(&rio_server, clientfd);
//     Rio_writen(clientfd, request, strlen(request));

//     /* Forward response to client */
//     char response[MAXLINE];
//     int n;
//     while ((n = Rio_readlineb(&rio_server, response, MAXLINE)) != 0) {
//         Rio_writen(connfd, response, n);
//     }

//     Close(clientfd);

//     // /* Forward response to client */
//     // char response[MAX_OBJECT_SIZE];
//     // char buf[MAXLINE];
//     // int n;
//     // size_t size = 0;
//     // while ((n = Rio_readlineb(&rio_server, buf, MAXLINE)) != 0) {
//     //     Rio_writen(connfd, buf, n);
//     //     if (size + n < MAX_OBJECT_SIZE) memcpy(response + size, buf, n);
//     //     size += n;
//     // }
//     // Close(clientfd);
// }

