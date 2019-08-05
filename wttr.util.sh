#!/bin/bash

if [ $# -eq 0 ]
then
    curl wttr.in
elif [ $# -eq 1 ]
then
    curl "wttr.in/$1"
else
    echo "ERROR IMPROPER USAGE"
fi
