#/user/bin/env bash

CUR_DIR=$(cd "$(dirname "$0")";pwd)
time=$(date "+%H:%M:%S")

git config --global user.email "yidaoxiangan@gmail.com"
git config --global user.name "yidaoxiangan"

log="${time} SUCCESS: Config git email and name." 
echo "${log}"
echo "${log}" >> "${CUR_DIR}/../install.log"

