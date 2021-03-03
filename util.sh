# Install package from supplied URL ($1)
install_from_url () {
    echo "Installing .deb from url $1..."
    TEMP_DEB="$(mktemp)" && wget -O "$TEMP_DEB" $1 && sudo dpkg -i "$TEMP_DEB"
    rm -f "$TEMP_DEB"
}

dotfiles_install() {
    sudo apt install -y ripgrep fd-find jq dos2unix git wget gpg apt-transport-https &&
    install_from_url "https://github.com/Peltoche/lsd/releases/download/0.19.0/lsd_0.19.0_amd64.deb"
    find . -name "*_install.sh" | awk  -F '/' '{print "cd ./" $2 "; chmod +x " $3 " && ./" $3 "; cd ../"}' | sh
    echo "nvim -> :PlugInstall"
    echo "zsh -> chsh -s $(which zsh)"
}

dotfiles_uninstall() {
    find . -name "*_uninstall.sh" | awk  -F '/' '{print "cd ./" $2 "; chmod +x " $3 " && ./" $3 "; cd ../"}' | sh
    sudo apt autoremove -y ripgrep fd-find lsd jq dos2unix git wget gpg apt-transport-https
}
