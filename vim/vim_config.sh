#/usr/bin/env bash

curl -fLo ~/.vim/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

git clone https://github.com/flazz/vim-colorschemes.git ~/.vim/vim-colorschemes
mkdir ~/.vim/colors
cp -r  ~/.vim/vim-colorschemes/colors/* ~/.vim/colors

CUR_DIR=$(cd "$(dirname "$0")";pwd)
cp "${CUR_DIR}/.vimrc" ~/
time=$(date "+%H:%M:%S")
log="${time} SUCCESS: Copy .vimrc to ~/.vimrc"
echo "${log}"
echo "${log}" >> "${CUR_DIR}/../install.log"
