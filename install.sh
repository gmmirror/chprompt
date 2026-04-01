#!/usr/bin/env bash

command git clone --depth 1 \
    'https://github.com/Zeronetsec/Chprompt.git' \
    "${PREFIX}/tmp/chprompt"
command chmod +x -Rv "${PREFIX}/tmp/chprompt"
command bash "${PREFIX}/tmp/chprompt"
[[ -d "${PREFIX}/tmp/chprompt" ]] && {
    command rm -rfv "${PREFIX}/tmp/chprompt"
}

exit 0