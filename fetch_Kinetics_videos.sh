#!/bin/bash

VIDEOPATH=$1
JSON_FILE=$2
TEMP_FILE=$3

if [ -d $VIDEOPATH ]; then
    python run_crosscheck_Kinetics.py $VIDEOPATH $JSON_FILE $TEMP_FILE
else
    echo "Directory does not exists."
    exit 0
fi

echo "Have a good day!"
