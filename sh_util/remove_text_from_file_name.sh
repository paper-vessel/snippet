#!/bin/bash

for file in effect_*
    do
        mv "${file}" "${file/effect_/}"
    done
