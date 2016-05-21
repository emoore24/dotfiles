BUNDLE_DIR=~/.vim/bundle
# "dirname" gives directory name of script (BASH_SOURCE). cd to directory and run pwd to get directory of this script
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo "Running in $SCRIPT_DIR"

#Symlink files
ln -sfv "$SCRIPT_DIR/.vimrc" ~
ln -sfv "$SCRIPT_DIR/.tmux.conf" ~

# Install/update Vundle
mkdir -p "$BUNDLE_DIR" && (git clone https://github.com/VundleVim/Vundle.vim "$BUNDLE_DIR/Vundle.vim" || (cd "$BUNDLE_DIR/Vundle.vim" && git pull origin master))

# Install bundles
vim +PluginInstall +qall

cd -
