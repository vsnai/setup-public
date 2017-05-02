" Elvijs Ostrovskis' .vimrc file

set nocompatible

so ~/.vim/plugins.vim

set history=10000
let mapleader = ","

" Visuals
syntax enable
colorscheme atom-dark-256
set guifont=Fira_Code:h13
set linespace=15
hi LineNr guibg=bg

hi VertSplit guifg=bg guibg=bg
hi StatusLineNC guifg=bg guibg=#555555
hi StatusLine guifg=bg guibg=white

set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R

" Split Management
set splitbelow
set splitright

nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

" Mappings
nmap <leader>ev :e $MYVIMRC<cr>

" Filetype stuff
filetype on
filetype plugin on
filetype indent on

" CTRL+P
nmap <c-m> :CtrlPBufTag<cr>

" Enable Statusline
set encoding=utf-8
set laststatus=2

" Does Not Show Current Mode
set noshowmode

" Disable Wrapping
set nowrap

" Identation Stuff
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent

" Disabling Case Sensitivity For Search
set ignorecase
set smartcase
" Highlights Search Results
set hlsearch
" Searches as Soon as Something Has Been Typed
set incsearch

" Highligths Current Line
set cursorline

" Disables Sound
set vb

" Shows Line Numbers
set number
set backspace=indent,eol,start


" Fast Quit & Saves
nmap <leader>q :q<cr>
nmap <leader>w :w!<cr>
nmap <leader>wq :wq!<cr>

" Execute Gulp
nmap <leader>g :!gulp<cr>

" Removes Highlights
nmap <leader>/ :noh<cr>

" Escape To Normal Mode
imap hh <esc>

" Good Habbits Lad
noremap <Up>        <NOP>
noremap <Down>      <NOP>
noremap <Left>      <NOP>
noremap <Right>     <NOP>

" Map ,e and ,v to open files in the same directory as the current file
cnoremap %% <C-R>=expand('%:h').'/'<cr>
map <leader>e :edit %%
map <leader>v :view %%

" Project Customs
map <leader>la :edit app
map <leader>lr :edit app/Http/routes.php<cr> 
map <leader>lc :edit resources/assets/postcss/app.css<cr>
map <leader>lm :edit resources/views/master.blade.php<cr>
map <leader>lh :edit resources/views/home.blade.php<cr>
map <leader>ln :edit resources/views/partials/_navbar.blade.php<cr>

" Rename Current File
function! RenameFile()
    let old_name = expand('%')
    let new_name = input('New file name: ', expand('%'))

    if new_name != '' && new_name != old_name
        exec ':saveas ' . new_name
        exec ':silent !rm ' . old_name
        redraw!
    endif
endfunction
map <leader>r :call RenameFile()<cr>

" Auto Source
augroup autosourcing
    autocmd!
    autocmd BufWritePost .vimrc source %
augroup END
