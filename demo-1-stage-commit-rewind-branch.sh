#!/bin/bash

REPODIR=repo/

function run()
{
  echo -n ">$*   [Yn]"
  read -n 1 reply; 
  if [ "$reply" != "" ]; then echo EINS; fi
  if [ "$reply" = "${reply#[Nn]}" ]; then
    echo ZWEI
  fi

  $*
}

mkdir $REPODIR
cd $REPODIR

run "git init"
run 'echo "Repo for demonstrating git use" > README.md'
run git status
run git add .
run git status
run "git commit -m 'initial commit'"
