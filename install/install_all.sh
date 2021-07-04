#/usr/bin/env bash

CUR_DIR=$(cd "$(dirname "$0")";pwd)

for file in `ls ${CUR_DIR}`; do

    if [ "$file" = "install_all.sh" ]; then
    	continue
    fi

    command="${CUR_DIR}""/""${file}"
    echo "command is ""${command}"
    ${command}

done
