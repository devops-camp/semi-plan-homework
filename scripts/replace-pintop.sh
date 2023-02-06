#!/bin/bash


cd $(dirname $0)

find ../users/ -type f -name "*.md" | xargs sed -i '/pinTop/s/true/false/g'
find ../homework/ -type f -name "*.md" | xargs sed -i '/pinTop/s/true/false/g'

