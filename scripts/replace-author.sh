#!/bin/bash
# 替换作者名字
# 参考地址: https://stackoverflow.com/questions/11003418/calling-shell-functions-with-xargs
#

cd $(dirname $0)

function replace_author() {
    filepath=$1
    username=$(echo ${filepath} | cut -f 3 -d '/')

    sed -i "/originAuthor/s/homework/${username}/g" ${filepath}
    sed -i "/tags:/a\  - ${username}" ${filepath}
}

## 公开函数为命令
export -f replace_author

## 替换用户提交
find ../users -type f -name "*.md" |xargs -n 1 -P 10 -I {} bash -c 'replace_author "$@"' _ {}



function replace_author_homework() {
    filepath=$1
    username=homework

    sed -i "/originAuthor/s/homework/${username}/g" ${filepath}
    sed -i "/tags:/a\  - ${username}" ${filepath}
}


## 替换 homework
export -f replace_author_homework
find ../homework -type f -name "*.md" |xargs -n 1 -P 10 -I {} bash -c 'replace_author_homework "$@"' _ {}

