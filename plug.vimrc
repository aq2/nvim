".....  Plug
  if empty(glob('~/.config/nvim/autoload/plug.vim'))
    silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
  endif


  call plug#begin('~/.config/nvim/plugged')
    Plug 'airblade/vim-gitgutter'
    Plug 'csexton/trailertrash.vim'
    " Plug 'digitaltoad/vim-pug'
    " Plug 'ervandew/supertab'
    " Plug 'hail2u/vim-css3-syntax'
    " Plug 'iloginow/vim-stylus'
    Plug 'itchyny/lightline.vim'
    Plug 'itchyny/vim-gitbranch'
    Plug 'jeetsukumaran/vim-markology'
    Plug 'joeytwiddle/sexy_scroller.vim'
    Plug 'junegunn/fzf.vim'
    Plug 'junegunn/goyo.vim'
    Plug 'junegunn/limelight.vim'
    Plug 'junegunn/fzf', { 'dir': '~/.config/fzf', 'do': './install --all' }
    " Plug 'mattn/emmet-vim'
    Plug 'mgee/lightline-bufferline'
    Plug 'mhinz/vim-startify'
    Plug 'pangloss/vim-javascript'
    Plug 'scrooloose/nerdtree'
    Plug 'simnalamburt/vim-mundo'
    " Plug 'storyn26383/vim-vue'
    Plug 'tpope/vim-commentary'
    Plug 'vimwiki/vimwiki'
    Plug 'yurifury/hexHighlight'
  call plug#end()

