#!/usr/bin/env bash

if [[ ! -d "${PREFIX}/tmp" ]]; then
    command mkdir -p "${PREFIX}/tmp"
fi

if [[ -d "${PREFIX}/tmp/chprompt" ]]; then
    command rm -rf "${PREFIX}/tmp/chprompt"
fi

command git clone --depth 1 \
    'https://github.com/Zeronetsec/Chprompt' \
    "${PREFIX}/tmp/chprompt"

cd "${PREFIX}/tmp/chprompt" || exit 1
command chmod +x -R "install.sh"
command bash "install.sh"
cd