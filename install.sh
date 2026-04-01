#!/usr/bin/env bash

[[ -d "${PREFIX}/tmp/chprompt" ]] && {
    command rm -rfv "${PREFIX}/tmp/chprompt"
}

command git clone --depth 1 \
    'https://github.com/Zeronetsec/Chprompt' \
    "${PREFIX}/tmp/chprompt"
command chmod +x -R "${PREFIX}/tmp/chprompt"
command bash "${PREFIX}/tmp/chprompt"
exit 0