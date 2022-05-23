sudo apt install zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

rm ~/.vimrc
rm ~/.zshrc
rm ~/.tmux.conf

ln -s .zshrc ~/.zshrc
ln -s .vimrc ~/.vimrc
ln -s .tmux/conf ~/.tmux.conf
