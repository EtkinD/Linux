#!/usr/bin/bash

P=$(pwd)

# Finding .zshrc_backup file
if [ ! -f $P/.zshrc_backup ]; then
    P=$P/ZSH
    if [ ! -f $P/.zshrc_backup ]; then
        echo "Could not find .zshrc_backup. Please change directory to the ZSH directory."
        exit 1
    fi
fi

cd $HOME

## --------------------------------------------------
echo "Installing zsh and changing default shell"
apt install -y zsh
chsh -s $(which zsh)

## --------------------------------------------------
echo "Installing oh-my-zsh and powerlevel10k..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

## --------------------------------------------------
echo "Installing zsh-autosuggestions and zsh-syntax-highlighting plugins..."
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

## --------------------------------------------------
cp $P/.zshrc_backup $HOME/.zshrc
cp $p/.custom_source.sh $HOME/.custom_source.sh

## --------------------------------------------------
echo "Done!"
exit 0
