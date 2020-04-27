PLUGIN_DIR="${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins"
THEMES_DIR="${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes"

echo "changing directory to plugins directory: $PLUGIN_DIR"
cd PLUGIN_DIR

echo "Git cloning ZSH Plugins"
git clone https://github.com/zpm-zsh/ls.git
git clone https://github.com/zsh-users/zsh-history-substring-search
git clone https://github.com/zsh-users/zsh-autosuggestions
git clone https://github.com/djui/alias-tips.git

echo "changing directory to themes directory: $THEMES_DIR"
cd THEMES_DIR

echo "Git cloning ZSH Themes"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git
git clone https://github.com/denysdovhan/spaceship-prompt.git
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

cd -
