#!/bin/bash

REPODIR=./repo/

source ./helper-funcs.sh
cp nothing-here.png git.dot.png

run rm -rf $REPODIR
run mkdir -p $REPODIR
run cd $REPODIR

run "git init"
run 'echo "Repo for demonstrating git use" > README.md'
run git status
run "git add ."
run git status
run "git commit -m 'initial commit'"
run touch functions.c
run touch functions.h
run git add functions.c functions.h
run "git commit -m 'added 1st lib'"
run git status
run git tag v1.0
run 'echo "function x() { }" >> functions.c'
run git status
run git add .
run "git commit -m 'we now have x()'"
run git status
run git branch v1.0-bugfix v1.0
run touch variants.h
run git add .
run "git commit -m 'deal with variants'"
run git checkout v1.0-bugfix
run touch LICENSE.txt
run git add .
run 'git commit -m "retrofitted license"'

