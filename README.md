# Some scripts to visually demonstrate GIT

## Prerequisites

Clone git2dot from https://github.com/jlinoff/git2dot.
Clone this repo in a parallel subdirectory.
Install dependencies.

```
git clone https://github.com/jlinoff/git2dot
git clone ...path-to-git-start-repo...
sudo apt install feh inotify-tools
```

## Use

Run the `rebuild_graph_on_demand.sh` script in a shell.
This will monitor the `repo/` directory and create a new "git.dot.png"
file whenever any changes are detected.

Run the FEH image viewer. It will refresh automatically, whenever
the png file changes.

In a console, make changes to the git repo in `repo/`. Those changes
will be reflected in `git.dot.png` immediately.

FEH mini-guide: Use arrow up/down keys to zoom. Use numerical keypad to pan.

## Demo-Scripts

The 'demo-*' scripts perform some commen git workflows step-by-step.

