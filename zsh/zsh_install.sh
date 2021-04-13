# Install prerequisites
sudo apt install -y git curl

# Install default zsh and "Oh my zsh"
sudo apt install -y zsh
yes | sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.oh-my-zsh/themes/powerlevel10k

# Install zsh zsh-autosuggestions plugin
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/plugins/zsh-autosuggestions

# Use your .p10k.zsh or configure manually
cp zshrc ~/.zshrc
cp p10k.zsh ~/.p10k.zsh
cp p10k.classic.zsh ~/.p10k.classic.zsh
cp p10k.lean.zsh ~/.p10k.lean.zsh

