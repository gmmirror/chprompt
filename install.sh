#!/usr/bin/env bash

[[ -d "${PREFIX}/tmp/chprompt" ]] && {
    command rm -rf "${PREFIX}/tmp/chprompt"
}

command git clone --depth 1 \
    'https://github.com/Zeronetsec/Chprompt' \
    "${PREFIX}/tmp/chprompt"

cd "${PREFIX}/tmp/chprompt" || exit 1
command chmod +x -R "install.sh"
command bash "install.sh"
cd

exit 0