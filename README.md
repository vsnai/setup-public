# setup-public

### vi, plugins, colorscheme 
```
mkdir ~/.vim && cd ~/
wget https://raw.githubusercontent.com/wdvio/setup-public/master/.vimrc
mkdir ~/.vim/colors && cd ~/.vim/colors && wget https://raw.githubusercontent.com/gosukiwi/vim-atom-dark/master/colors/atom-dark-256.vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cd ~/.vim && wget https://raw.githubusercontent.com/wdvio/setup-public/master/plugins.vim
vi +PluginInstall +qall && cd && clear

```

### zsh
```
sudo apt-get install zsh
echo ". ~/.aliases" >> ~/.zshrc
echo "export PATH=\"$HOME/.composer/vendor/bin:$PATH\"" >> ~/.zshrc
echo "export PATH=\"$HOME/usr/local/bin:$PATH\"" >> ~/.zshrc
echo "alias wdir=\"cd /var/www\"" > ~/.aliases
```

### tmux
```
sudo apt-get install tmux
<CTRL+b>
C - new window
, - rename window
p - previous; n - next
w - list windows
```

### git
```
alias l="git log --oneline --graph"
alias gs="git status"
alias ga="git add ."
alias gc="git commit -m"
alias gb="git branch"
alias gch="git checkout"
alias gchm="git checkout master"
alias gr="git rebase"
```

### git workflow (init)
```
git clone repo

git checkout -b paylink

echo "init" > paylink.md
git add .
git commit -m "Initialize paylink"
git push --set-upstream origin paylink
```

### git workflow (Priyanka's scenario)
```
git clone repo

git checkout paylink
git checkout -b SP-11922

echo "Schema mod 1" > schema.sql

git add .
git commit -m "[#SP-11922] Do schema mod"

git checkout paylink
git rebase SP-11922
git push
```

### git workflow (Mohana's scenario)
```
git clone repo

git checkout paylink
git checkout -b SP-11921

echo "Schema mod 2" > schema.sql

git add .
git commit -m "[#SP-11921] Do schema mod 2"

git checkout paylink
git rebase SP-11921
git push
```
