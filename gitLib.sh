#!/bin/sh

function clonaRepo()
{
  # Checking function arguments
  if test $# -eq 0 ; then
    echo "No arguments supplied"
  elif test -z "$1" -o -z "$2" -o -z "$3" ; then
    echo "Missing required arguments"
  else
    gitrepo=$(echo $1 | sed -e "s/github.com/$2@github.com/g")
    git clone $gitrepo --branch $3
  fi
}
