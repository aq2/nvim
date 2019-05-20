"  general settings

  set noshowmode
  set cursorline
  set termguicolors
  colorscheme gravy
  set background=dark
  " set ambiwidth=double
  set noruler signcolumn=no
  set number numberwidth=4 rnu

  set hidden
  set mouse=a
  " set backspace=2
  set encoding=utf-8
  set undofile nobackup
  set virtualedit=block
  set splitbelow splitright
  set wrap whichwrap+=<,>,[,]
  set clipboard^=unnamed,unnamedplus
  set timeout updatetime=100 ttimeoutlen=20

  " set linebreak
  set copyindent
  set showbreak=˜
  set fillchars=""
  set shiftround shiftwidth=2
  set tabstop=2 softtabstop=2 expandtab
  set foldmethod=indent foldenable foldlevelstart=1

  set path+=**
  set gdefault
  set showmatch
  set ignorecase
  set sps=best,10
  set completeopt=longest,menuone
  set omnifunc=syntaxcomplete#Complete
  set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pdf,*/Music/*,*/Pictures/*

  " lines to scroll for C-Up/Down
  set scroll=9
  " lines around the cursor
  set scrolloff=9


"  netrw obviously -> dirvish is better
  let g:netrw_banner = 0
  let g:netrw_winsize = 25
  let g:netrw_liststyle = 3
  let g:netrw_dirhistmax = 0


"  source other vim settings
  source $HOME/.config/nvim/plug.vimrc
  source $HOME/.config/nvim/keys.vimrc
  source $HOME/.config/nvim/nerd.vimrc
  source $HOME/.config/nvim/lightline.vimrc
  source $HOME/.config/nvim/functions.vimrc
  source $HOME/.config/nvim/plugin-settings.vimrc

