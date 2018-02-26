BUNDLE_DIR=~/.vim/bundle
# "dirname" gives directory name of script (BASH_SOURCE). cd to directory and run pwd to get directory of this script
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo "Running in $SCRIPT_DIR"

#Symlink files
ln -sfv "$SCRIPT_DIR/.vimrc" ~ # vimrc
ln -sfv "$SCRIPT_DIR/.tmux.conf" ~ # tmux.conf
ln -sfv "$SCRIPT_DIR/.vimrc" ~/.config/nvim/init.vim # neovim
# symlink vim bundle directory with neovim. vimrc takes care of detecting
# the difference and doing the right thing.
mkdir -pv ~/.vim
ln -sfv ~/.vim ~/.config/nvim

# Uncomment below to install/update Vundle, but I switched to vim-plug.
# vim-plug is auto installed upon first opening of vim (see my .vimrc)
#mkdir -p "$BUNDLE_DIR" && (git clone https://github.com/VundleVim/Vundle.vim "$BUNDLE_DIR/Vundle.vim" || (cd "$BUNDLE_DIR/Vundle.vim" && git pull origin master))

# Uncomment below to install Vundle bundles
#vim +PluginInstall +qall

cd -
