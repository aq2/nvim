"  general settings

  set mouse=a
  set signcolumn=no
  colorscheme gravy
  set background=dark
  " set ambiwidth=double
  set virtualedit=block
  set termguicolors
  set splitbelow splitright
  set rnu number numberwidth=4
  set noruler
  set noshowmode

  " lines to scroll for C-Up/Down
  set scroll=9
  " lines around the cursor
  set scrolloff=9

  set wrap whichwrap+=<,>,[,]
  " set backspace=2
  set encoding=utf-8
  "don't unload hidden buffers
  set hidden
  set clipboard^=unnamed,unnamedplus
  set timeout updatetime=100 ttimeoutlen=20

  " set linebreak
  set showbreak=˜
  set fillchars=""
  set copyindent
  set shiftround shiftwidth=2
  set tabstop=2 softtabstop=2 expandtab
  set foldmethod=indent foldenable foldlevelstart=1

  " search directories
  set path+=**
  set ignorecase
  set gdefault
  set showmatch
  set completeopt=longest,menuone
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
  source $HOME/.config/nvim/plug.vimrc
  source /home/angelo/.config/nvim/keys.vimrc
  source /home/angelo/.config/nvim/nerd.vimrc
  " source /home/angelo/.config/nvim/lightline.vimrc
  source /home/angelo/.config/nvim/functions.vimrc
  source /home/angelo/.config/nvim/plugin-settings.vimrc

" 82
