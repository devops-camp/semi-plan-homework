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



# seq -f "n%04g" 1 100 | xargs -n 1 -P 10 -I {} bash -c 'echo_var "$@"' _ {}
export -f replace_author
find ../users -type f -name "*.md" |xargs -n 1 -P 10 -I {} bash -c 'replace_author "$@"' _ {}


