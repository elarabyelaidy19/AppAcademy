# basic git commands 
 
* $ mkdir git_basics  # creat file 
* $ cd git_basics     # change directory to the folder
* $ echo '# README #' > README.md    #creat file with comment # README #
* $ echo '# LICENSE #' > LICENSE.md   #creat file with a comment # LICENSE #
* $ git init  # initialize new repo 
* $ git status     # is showing us what's called our working tree and staging area.
* $ git add  <file>      # moving files to the staging area 
* $ git commit -m  'add changes'     # make a commit with all changes you have mad with a message 'add changes'
* $ git log      # see a commit history for your repo


# new Repository 
* git init
* git add README.md
* git add . 
* git commit -m "first commit"
* git branch -M main
* git remote add origin <reop link> 
* git push -u origin main

# push an existing repository from the command line
* git remote add origin 
* git branch -M main
* git push -u origin main