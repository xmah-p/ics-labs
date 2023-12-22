# Hints

```bash

cd ./tiny/
./tiny 55556 &
cd ..
./proxy 55555 &
curl -v --proxy http://localhost:55555 http://localhost:55556/home.html > dbg
kill %2
curl -v --proxy http://localhost:55555 http://localhost:55556/home.html >> dbg
kill %1
```

Cache Concurrency Check
In this test, we check the caching functionality of your proxy by these steps:

Load 5 images with different URL. Each image will be loaded 3 times.
Tell TINY to stop responding to new requests.
Load these images again. Each image will be loaded 3 times and they should be served by your proxy.
Load 5 new images, 3 times each. These requests should fail because TINY has stopped responding.
Done :)

Cache LRU Check
In this test, we check the LRU nature of your caching proxy by these steps:

Load images #0 ~ #29 in a nearly sequential manner. Each image is of 50KB large so it should be added into cache.
Tell TINY to stop responding to new requests.
Load images #27 ~ #29 again. They should be served by your proxy.
Load images #0 ~ #2. They should be evicted from cache; therefore these requests will fail.
Done :)


DETACHED threads can be killed by other threads

`SIGPIPE`

`read` a socket that has been prematurely closed will cause `read` to return `-1` and set errno to `ECONNRESET`

`write` to a socket that has been prematurely closed will cause `write` to return `-1` and set errno to `EPIPE`

Not all content is ASCII text: for binary data, use `memcpy` instead of `strcpy`

Total number of processes <= 100

403: redownload handout



# Part 1

listen for incoming connections on a specified port

read and parse the entirety of the request

establish a connection to the server specified in the request

read the server's response and forward it back to the client

## HTTP/1.0 GET requests

browser request line:

```bash
GET http://www.cmu.edu:80/hub/index.html HTTP/1.1
```

port is optional, default is 80

## request headers

Always present `Host`

If browsers attach their own `Host` headers, use that

Always present `UserAgent`

Always send `Connection: close`, `Proxy-Connection: close`

If browser presents `UserAgent`, `Connection` or `Proxy-Connection`, ignore them

If browser presents additional headers, forward them unchanged

## Port numbers

HTTP request port

Proxy's listening port: > 1024 && < 65536 (unprivileged ports)

# Part 2

One new thread per request

Pool of worker threads

`pthread_detach(pthread_self())`

Check Pthreads lib for locking primitives

`open_clientfd` and `open_listenfd` are thread-safe

# Part 3

maximum cache size (1 MiB) && maximum cache object size (100 KiB)

only count bytes used to store the actual web objects.

allocate a buffer for each active connection

store data received from the server in the buffer

if exceeds maximum object size, discard the object

if not, store the object in the cache

Eviction policy: LRU

Only one thread can write cache at a time, but multiple threads should be able to read cache at the same time

- partitioning the cache
- Pthreads readers-writers locks
- Using semophores implement your own readers-writers solution

# Testing and debugging

tiny web server

`curl`

