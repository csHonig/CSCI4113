#!/bin/bash -x
# The -x above signifies tracing that shows expansions being performed

number=1

if [ "$number" = "1" ]; then
    echo "Number equals 1"
else
    echo "Number does not equal 1"
fi
