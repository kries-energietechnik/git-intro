#!/bin/bash

REPODIR=repo/
GIT2DOT=$(realpath ../git2dot/git2dot.py)

while /bin/true; do
  if inotifywait -r $REPODIR; then
    pushd $REPODIR
    sleep 1
    $GIT2DOT --png ../git.dot -l '%h|%s|%cr'
    popd
  else
    sleep 1
  fi
done

