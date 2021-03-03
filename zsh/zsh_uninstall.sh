# Remove p10k
# And remove all references of p10k in ~/.zshrc
rm -f ~/.p10k.zsh
rm -rf -- ~/.oh-my-zsh/themes/powerlevel10k

# Remove "Oh my zsh" and zsh
chmod +x  ~/.oh-my-zsh/tools/uninstall.sh
yes | ~/.oh-my-zsh/tools/uninstall.sh
sudo apt remove zsh -y
sudo chsh -s /bin/bash user
