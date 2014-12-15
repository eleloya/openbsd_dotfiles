" Cool Shortcuts
"
"
" KEY	ACTION
" ,i    load .vimrc info file
" ,h	new horizontal window
" ,v	new vertical window
" ,n	toggle NERDTree off and on
" ,p	Go to Previous File
" ,fd	Change CD to current file
" ,hd	Change CD to ~


" CONFIGURATION
set nocompatible
set nocp
set splitbelow splitright
syntax on
syntax enable
colorscheme vividchalk
set t_Co=256
set background=dark
filetype plugin on
filetype plugin indent on
set tabstop=2			              " Global tab width.
set shiftwidth=2		            " See this ^
set expandtab			              " Use soft tabs (spaces)
set shiftround			            " When at 3 spaces and I hit >>, go to 4, not 5.
set autoindent			            " Always set autoindenting on
set autoread			              " realod file when it changes
set backspace=indent,eol,start	" Intuitive backspacing.
set history=500			            " The bigger the better
set number			                " Who doesn't like line numbers?
set title			                  " Set the terminal's title
set visualbell			            " No beeping please.
set noesckeys			              " No delay when clicking esc please.
set ttimeout			              " See this ^
set ttimeoutlen=1
set noswapfile			            " Not that into swap files
set nobackup			              " Not that into backups
set nowritebackup		            " See this ^
set directory=$HOME/.vim/tmp	  " Swap files location
set backupdir=$HOME/.vim/tmp	  " Backup files location
set go-=L			                  " Removes left hand scroll bar
set showcmd			                " Display incomplet commands?
set showmode			              " Display the mode you're in.
set wildmenu			              " Enhanced command line completion?
set wildmode=list:longest	      " Complete files like a shell.?
set ignorecase			            " Case-insensitive searching.
set smartcase			              " Case-Sensitive if expression contains capital
set noincsearch			            " Wont highlight matches as you type.
set hlsearch			              " Highligt matches.
set wrap			                  " Turn on line wrapping
set hidden			                " Handle multiple buffer better?
set scrolloff=3			            " Show 3 lines of context around the cursor?
set laststatus=2		            " Show the status line all the time
set statusline=[%n]\ %<%.99f\ %h%w%m%r%y\ %{exists('*CapsLockStatusline')?CapsLockStatusline():''}%=%-16(\ %l,%c-%v\ %)%P
highlight StatusLine ctermfg=blue ctermbg=yellow

" A more comftarble map leader
let mapleader = ","


" Cool Shortcuts Definition
map <leader>i :vsp ~/.vimrc<cr>
noremap <Leader>h :split^M^W^W<cr>
noremap <Leader>v :vsp^M^W^W<cr>
map <leader>n :NERDTreeToggle<cr>
map <leader>p <C-^> " Go to previous file
map <leader>fd :lcd %:h<cr>
map <leader>hd :lcd ~<cr>

" Usefull mappings
imap jj <Esc> " Professor VIM says '87% of users prefer jj over esc', jj abrams disagrees
" Quicker windows movement
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
command! Q q "Bind :Q to :q
command! Qall qall
map Q <Nop> "Disable Ex mode
map K <Nop> "Disable K looking stuff up


" Plugins Configuration
let g:NERDTreeWinPos = "left"
let g:ctrlp_working_path_mode = 'ra'


" Detect extensions
autocmd BufRead,BufNewFile *.html.erb setlocal filetype=html.eruby
autocmd BufRead,BufNewFile *.css.scss setlocal filetype=css.scss
autocmd BufRead,BufNewFile *.js.coffee setlocal filetype=js.coffee

" Custom Functions
" F4, creates a ruby block comment
" #############
" # example #
" #############
"
nnoremap <F4> <esc>yyp<c-v>$r#<esc>I######<esc>kI# <esc>A #<esc>yyP<c-v>$r#<esc>jjj

