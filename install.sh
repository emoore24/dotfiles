echo "PREREQUISITES: "
echo "Make sure you have installed Neovim"

read -p "Press Enter to Continue, or Ctrl-C to exit" continuevar

BUNDLE_DIR=~/.vim/bundle
# "dirname" gives directory name of script (BASH_SOURCE). cd to directory and run pwd to get directory of this script
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo "Running in $SCRIPT_DIR"

echo "Symlinking files..."
#Symlink files
ln -sfv "$SCRIPT_DIR/.vimrc" ~ # vimrc
ln -sfv "$SCRIPT_DIR/.tmux.conf" ~ # tmux.conf
ln -sfv "$SCRIPT_DIR/.vimrc" ~/.config/nvim/init.vim # neovim
# symlink vim bundle directory with neovim. vimrc takes care of detecting
# the difference and doing the right thing.
mkdir -pv ~/.vim
ln -sfv ~/.vim ~/.config/nvim

echo "Instaling vim-plug..."
# Install vim-plug
# Vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Neovim
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "instaling Neovim providers..."
sudo python3 -m pip install --user --upgrade pynvim
gem install neovim


echo "PlugInstall vim-plug bundles"
# Install vim-plug bundles
vim +PlugInstall +qall
nvim +PlugInstall +qall

echo "Install NVM..."
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | zsh

echo "Installing OhMyZsh..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "Things to do:"
echo "1. Restart shell & npm install neovim, typescript, javascript-typescript-langserver"
echo "2. Install Homebrew"
echo "3. Set up zsh using example zshrc in repo."

cd -
