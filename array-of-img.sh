#!/bin/sh

 echo 'var imgs = [' &&  ls img |  head -n $( expr $(ls img | wc -l  | cut -c 1) - 1 )  |  sed  's/^/     "/;s/$/",/' && echo  "     "$(ls img | tail -n 1 |  sed   's/^/"/;s/$/" ];/')
