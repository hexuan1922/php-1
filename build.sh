#!/usr/bin/env bash

source ../../lib/utils.sh


if [ $# = 0 ]; then
  dir_list
else
  for arg in $@; do
    case $arg in
      5.6)
        docker build --no-cache -t m9rco/php:5.6 -f 5.6/Dockerfile 5.6/
        ;;
      7.1)
        docker build --no-cache -t m9rco/php:7.1 -f 7.1/Dockerfile 7.1/
        ;;
      7.2)
        docker build --no-cache -t m9rco/php:7.2 -f 7.2/Dockerfile 7.2/
        ;;
      7.3)
        docker build --no-cache -t m9rco/php:7.3 -f 7.3/Dockerfile 7.3/
        ;;
      *)
        echo
        error "Invalid params $arg"
        dir_list
        ;;
    esac;
  done;
fi;
