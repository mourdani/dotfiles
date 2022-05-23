# install zsh and oh-my-zsh
sudo apt install zs
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"


echo "============== Creating Symlinks =============="
# deleting existing configs
rm -f ~/.vimrc
rm -f ~/.zshrc
rm -f ~/.tmux.conf

# symlinking remote configs
ln -s $PWD/zshrc ~/.zshrc
ln -s $PWD/vimrc ~/.vimrc
ln -s $PWD/tmux/conf ~/.tmux.conf
echo "============== Symlinks Created ==============="

