#! /bin/sh
#
# ubuntu_16_04.sh
# Copyright (C) 2019 Guowei Chen <icgw@outlook.com>
#
# Distributed under terms of the GPL license.
#

USER=`whoami`
sudo apt-get --yes install git

cd ${HOME}
git init
git remote add -t master -f origin https://github.com/icgw/dotfiles.git
git checkout master

# install Node.js to /usr/local
sudo chown -hR ${USER} /usr/local
curl -sL install-node.now.sh/lts | bash

# install plug.vim
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# add ppa and install neovim
sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt-get update
sudo apt-get --yes install neovim

# delete the file not required
rm README.md LICENSE init

# install zsh
sudo apt-get --yes zsh
# install zsh configuration manager: oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

chsh -s `which zsh`

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${HOME}/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions.git ${HOME}/.oh-my-zsh/custome/plugins/zsh-autosuggestions