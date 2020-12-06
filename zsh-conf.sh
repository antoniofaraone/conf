#!/usr/bin/bash
#
#  Install zsh powerline fonts and colorls
#
#


sudo apt install zsh -y

if [ ! -x /usr/bin/curl ]; then
	echo "Please install curl first"
	exit 1
fi


sudo apt install fonts-powerline -y
sudo apt install gem -y
sudo apt install ruby-dev -y
sudo gem install colorls


sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
git clone --depth=1 https://gitee.com/romkatv/powerlevel10k.git ~/powerlevel10k
cp .zshrc ~/
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc

exec zsh
p10k configure
