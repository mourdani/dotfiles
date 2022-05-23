sudo apt install zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

rm -f ~/.vimrc
rm -f ~/.zshrc
rm -f ~/.tmux.conf

ln -s $PWD/zshrc ~/.zshrc
ln -s $PWD/vimrc ~/.vimrc
ln -s $PWD/tmux/conf ~/.tmux.conf
