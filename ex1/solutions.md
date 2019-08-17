
# ex1

## 1.1

    [dockerhost] ~ $ docker ps -a
    CONTAINER ID        IMAGE                 COMMAND                  CREATED             STATUS                     PORTS               NAMES
    118c6c088a5b        memcached:alpine      "docker-entrypoint.s…"   5 minutes ago       Exited (0) 3 minutes ago                       memcached
    fdf53ad3688e        postgres:9-alpine     "docker-entrypoint.s…"   6 minutes ago       Exited (0) 3 minutes ago                       postgres
    491901800a50        nginx:stable-alpine   "nginx -g 'daemon of…"   6 minutes ago       Up 6 minutes               80/tcp              nginx


# 1.2

    [dockerhost] ~ $ docker ps -a; docker images
    CONTAINER ID        IMAGE               COMMAND             CREATED             STATUS              PORTS               NAMES
    REPOSITORY          TAG                 IMAGE ID            CREATED             SIZE


# 1.3

    [dockerhost] ~ $ docker run -it devopsdockeruh/pull_exercise
    Unable to find image 'devopsdockeruh/pull_exercise:latest' locally
    latest: Pulling from devopsdockeruh/pull_exercise
    8e402f1a9c57: Pull complete
    5e2195587d10: Pull complete
    6f595b2fc66d: Pull complete
    165f32bf4e94: Pull complete
    67c4f504c224: Pull complete
    Digest: sha256:7c0635934049afb9ca0481fb6a58b16100f990a0d62c8665b9cfb5c9ada8a99f
    Status: Downloaded newer image for devopsdockeruh/pull_exercise:latest
    Give me the password: basics
    You found the correct password. Secret message is:
    "This is the secret message"


# 1.4

    [dockerhost] ~ $ docker run -d --name ex14 devopsdockeruh/exec_bash_exercise
    [...]
    0f7353091df7804a14c588bfd9f87a4a30ff24c62d0d68dc5f5cb7e3196fc7b4
    [dockerhost] ~ $ docker exec -it ex14 bash
    root@0f7353091df7:/usr/app# tail -F logs.txt
    Sat, 17 Aug 2019 13:08:20 GMT
    Secret message is:
    "Docker is easy"


# 1.5

Assuming included files `Dockerfile.ex15` and `ex15.sh`.

    [dockerhost] ~ $ docker build -f Dockerfile.ex15 -t ex15 .
    [dockerhost] ~ $ docker run -it --rm ex15
    Input website: helsinki.fi
    Searching..
    <!DOCTYPE HTML PUBLIC "-//IETF//DTD HTML 2.0//EN">
    <html><head>
    <title>301 Moved Permanently</title>
    </head><body>
    <h1>Moved Permanently</h1>
    <p>The document has moved <a href="http://www.helsinki.fi/">here</a>.</p>
    </body></html>


# 1.6

See also included `Dockerfile.ex16`.

    [dockerhost] ~ $ docker build -f Dockerfile.ex16 -t docker-clock .
    [...]
    Successfully tagged docker-clock:latest
    [dockerhost] ~ $ docker run docker-clock
    1
    2
    3


# 1.7

This is same as ex 1.5, but `ENTRYPOINT` has been changed to `CMD` as per
instructions. See `Dockerfile.ex17`.

    [dockerhost] ~ $ docker build -f Dockerfile.ex17 -t curler .
    [...]
    Successfully tagged curler:latest
    [dockerhost] ~ $ docker run -it --rm curler
    Input website: helsinki.fi
    Searching..
    <!DOCTYPE HTML PUBLIC "-//IETF//DTD HTML 2.0//EN">
    <html><head>
    <title>301 Moved Permanently</title>
    </head><body>
    <h1>Moved Permanently</h1>
    <p>The document has moved <a href="http://www.helsinki.fi/">here</a>.</p>
    </body></html>


# 1.8

    [dockerhost] ~ $ >log.txt
    [dockerhost] ~ $ docker run -it --rm -v $(pwd)/log.txt:/usr/app/logs.txt devopsdockeruh/first_volume_exercise
    (node:1) ExperimentalWarning: The fs.promises API is experimental
    Wrote to file /usr/app/logs.txt
    ^CClosing file


# 1.9

    [dockerhost] ~ $ docker run -d --rm -p 8000:80 devopsdockeruh/ports_exercise
    f1cefb0250dde2d7eeb1e50d96daa70f695f05d054488c5df354ca58b585d0f3
    [dockerhost] ~ $ curl -s http://localhost:8000; echo
    Ports configured correctly!!


# 1.10

See included `Dockerfile.ex110`.

    [dockerhost] ~/frontend-example-docker $ docker build -f Dockerfile.ex110 -t ex110 .
    [dockerhost] ~/frontend-example-docker $ docker run --rm -p 5000:5000 ex110:latest


# 1.11
