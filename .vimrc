" .vimrc of Bert Raeymaekers
"   - inspiration from https://www.youtube.com/watch?v=YhqsjUUHj6g

" Tabs should always be 4 spaces.
set tabstop=4
set softtabstop=4
set expandtab
set shiftwidth=4
set shiftround
set smartindent
set scrolloff=5

" Undo and history
set history=700
set undolevels=700

" Better copy/paste of blocks: enter/leave this mode with F2
set pastetoggle=<F2>
set clipboard=unnamed

" Make search case insensitive
set hlsearch
set incsearch
set ignorecase
set smartcase

" Disable backup and swap files - more trouble than they are worth.
set nobackup
set nowritebackup
set noswapfile

" Better indentation
vnoremap < <gv
vnoremap > >gv

" Rebind the <Leader> key
let mapleader = ","

" Bind CTRL-z to save
noremap <C-Z> :update<CR>
vnoremap <C-Z> <C-C>:update<CR>
inoremap <C-Z> <C-O>:update<CR>

" Quick quit command
noremap <Leader>e :quit<CR>
noremap <Leader>E :qa!<CR>

" CTRL-[hjkl] for movement between windows
map <c-h> <c-w>h
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l

" Sorting
vnoremap <Leader>s :sort<CR>

" Extra witespace: show it to me
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
au InsertLeave * match ExtraWhitespace /\s\+$/
" mkdir -p ~/.vim/colors && cd ~/.vim/colors
" wget -O wombat256mod.vim http://www.vim.org/scripts/download_script.php?src_id=13400
set t_Co=256
"color wombat256mod " Color not strong enough to my opinion.
color default

" Syntax highlighting
filetype off
filetype plugin indent on
syntax on

" Showing line number as 80 column.
set number
set tw=79
set nowrap
set fo-=t
set colorcolumn=80
highlight ColorColumn ctermbg=233
highlight LineNr ctermbg=233

" Autowrapping when pressing Q.
vmap Q gq
nmap Q gqap

" powerline
set laststatus=2

" ctrlp - quickly navigate to files.
let g:ctrlp_max_height = 30
set wildignore+=*.pyc
"set wildignore+=*_build/*
"set wildignore+=*/coverage/*

" python-mode


