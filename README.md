# setup-public

```
mkdir ~/.vim && cd ~/
wget https://raw.githubusercontent.com/wdvio/setup-public/master/.vimrc
mkdir ~/.vim/colors && cd ~/.vim/colors && wget https://raw.githubusercontent.com/gosukiwi/vim-atom-dark/master/colors/atom-dark-256.vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cd ~/.vim && wget https://raw.githubusercontent.com/wdvio/setup-public/master/plugins.vim
vi +PluginInstall +qall && cd && clear

```

### zsh & tmux

```
sudo apt-get install zsh
echo "alias wdir=\"cd /var/www\"" > ~/.aliases

sudo apt-get install tmux
<CTRL+b>
C - new window
, - rename window
p - previous; n - next
w - list windows
```
