#/usr/bin/env bash

CUR_DIR=$(cd "$(dirname "$0")";pwd)
cp "${CUR_DIR}/.vimrc" ~/
time=$(date "+%H:%M:%S")
log="${time} SUCCESS: Copy .vimrc to ~/.vimrc"
echo "${log}"
echo "${log}" >> "${CUR_DIR}/../install.log"
