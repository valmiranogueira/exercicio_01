#!/bin/bash

function clonaRepo()
{
  # Checking function arguments
  if test -z "$1" -o -z "$2" -o -z "$3" ; then
    echo "Missing required arguments"
  else
    # Running clone
    gitrepo="https://github.com/$2/$1.git"
    git clone $gitrepo --branch $3
  fi
}
