echo "============================="
echo "       Installing ZSH        "
echo "============================="
# install zsh and oh-my-zsh
sudo apt install zs
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "============================="
echo "     Cloning config file     "
echo "============================="

# deleting existing configs
rm -f ~/.vimrc
rm -f ~/.zshrc
rm -f ~/.tmux.conf

# symlinking remote configs
ln -s $PWD/.zshrc ~/.zshrc
ln -s $PWD/.vimrc ~/.vimrc
ln -s $PWD/.tmux.conf ~/.tmux.conf

echo "============================="
echo "    Installing VIM plugs     "
echo "============================="

# Install vim plug and install plugins
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
vim  -c 'PlugInstall' \
     -c 'qa!'

echo "============================="
echo "        Sourcing ZSH         "
echo "============================="
source $PWD/.zshrc

