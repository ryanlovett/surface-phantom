#!/bin/bash

LOG=$(mktemp /tmp/dev.XXXXXX)

{
    echo "$@"
    echo id: "`id`"
} >> ${LOG}

if [ -e $1 ]; then
    echo Deleting $1 >> ${LOG}
    rm -f $1
fi
