#!/usr/bin/env bash

set -e
set -u
#set -x
#set -o pipefail

# get topic
if [ $# -ne 1 ]; then
    >&2 echo "Usage: start_letter.sh some_topic_2024"
    exit
fi
topic=$1

# check if "topic" exists as a file or a directory
if [ -f $topic ] || [ -d $topic ]; then
    >&2 echo " <error> topic $topic exists"
    exit
else
    mkdir -p $topic;
fi

# copy files to "topic"
path=$(pwd)
echo "Copying files from $path"
echo " -> $topic"
files=(
    "illinois-letterhead.sty"
    "Illinois-Logo-Full-Color-CMYK.pdf"
    "Illinois-Wordmark-Horizontal-Full-Color-CMYK.pdf"
    "mysig.pdf"
)
for file in "${files[@]}"; do
    # copy, with no-clobber
    cp -n "${path}/${file}" $topic;
done

# copy template to "topic.tex"
file="mytemplate.tex"
cp -n "${path}/${file}" "${topic}/${topic}.tex";

echo "done."
