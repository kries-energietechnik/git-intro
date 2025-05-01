#!/bin/bash

REPODIR=repo/
GIT2DOT=$(realpath ../git2dot/git2dot.py)

while inotifywait -r $REPODIR; do
  pushd $REPODIR
  $GIT2DOT --png ../git.dot -l '%h|%s|%cr'
  popd
done
