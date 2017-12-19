#!/bin/bash

TARGET=$1
REPLACE=$2

for file in `find . -name "*$TARGET*"`
    do
        mv "${file}" "${file/$TARGET/$REPLACE}"
    done
