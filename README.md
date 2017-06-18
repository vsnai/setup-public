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

```
sudo yum install zsh
chsh -s /bin/zsh ec2-user

[B-k]
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
