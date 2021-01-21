#!/usr/bin/bash

sudo apt install zsh -y;
sudo apt install gem -y;
sudo apt install gem-dev -y;
sudo apt install ruby-dev -y;
sudo gem install colorls;
sudo apt install zsh-autosuggestions;
sudo apt install zsh-syntax-highlighting;

if [ ! -x /usr/bin/curl ]; then
	sudo apt install curl -y
fi

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
