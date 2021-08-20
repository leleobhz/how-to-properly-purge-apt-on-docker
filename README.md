# How to properly purge APT on Docker Images?

This repo was born from a very pertinent point from https://github.com/ygormutti about constant docker image size growing over recursive image usage.

I made a little .sh and used @ygormutti image with some changes over time and I'll report below for each change on process until we find a good way to avoid this growing up.

## On this commit:

```
+ docker image ls demo1
REPOSITORY   TAG       IMAGE ID       CREATED         SIZE
demo1        latest    06231f1572e4   5 minutes ago   319MB
+ docker image ls demo2
REPOSITORY   TAG       IMAGE ID       CREATED         SIZE
demo2        latest    af626adcc099   2 minutes ago   533MB
+ docker image ls demo3
REPOSITORY   TAG       IMAGE ID       CREATED        SIZE
demo3        latest    e91af42e73cf   1 second ago   747MB
```
