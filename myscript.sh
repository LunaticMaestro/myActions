#!/bin/bash
set -e # Exit on error

if [ -n "$GITHUB_EVENT_PATH" ];
then
    EVENT_PATH=$GITHUB_EVENT_PATH
fi

env

jq . < $EVENT_PATH

if echo "$*" | grep -i -q FIXED;
then
    echo "Found keyword"
else
    echo "Nothing to process"
fi