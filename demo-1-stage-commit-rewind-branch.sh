#!/bin/bash

REPODIR=./repo/

source ./helper-funcs.sh

mkdir -p $REPODIR
cd $REPODIR

run "git init"
run 'echo "Repo for demonstrating git use" > README.md'
run git status
run "git add ."
run git status
run "git commit -m 'initial commit'"
