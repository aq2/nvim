"  general settings

  set signcolumn=no
  colorscheme gravy
  set background=dark
  set ambiwidth=double
  set virtualedit=block
  set termguicolors
  set splitbelow splitright
  set rnu number numberwidth=4
  set noruler
  set noshowmode
  set cursorline scrolloff=9 nostartofline

  " set backspace=2
  set encoding=utf-8
  set hidden 
  set clipboard^=unnamed,unnamedplus
  set timeout updatetime=100 ttimeoutlen=20

  set linebreak
  set showbreak=˜
  set fillchars=""
  set copyindent
  set wrap whichwrap+=<,>,[,]
  set shiftround shiftwidth=2
  set tabstop=2 softtabstop=2 expandtab
  set foldmethod=indent foldenable foldlevelstart=1

  set path+=**
  set gdefault
  set showmatch
  set completeopt=longest,menuone
  set ignorecase 
  set omnifunc=syntaxcomplete#Complete
  set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pdf,*/Music/*,*/Pictures/*

  set nobackup
  set undofile

  " only show 10 best spell alternatives
  set sps=best,10


"  netrw obviously
  let g:netrw_banner = 0
  let g:netrw_winsize = 25
  let g:netrw_liststyle = 3
  let g:netrw_dirhistmax = 0


"  source other vim settings
"  source /home/angelo/.vim/keys.vimrc
"  source /home/angelo/.vim/nerd.vimrc
"  source /home/angelo/.vim/lightline.vimrc
"  source /home/angelo/.vim/functions.vimrc
"  source /home/angelo/.vim/plugin-settings.vimrc

" 82
