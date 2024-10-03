rm -f ~/.bashrc
cd ~/repos/dotfiles && stow --target=$HOME .

mkdir -p ~/.config
mkdir -p ~/.config/lf
rm -f ~/.config/lf/lfrc
ln -s ~/repos/dotfiles/lfrc ~/.config/lf/lfrc
