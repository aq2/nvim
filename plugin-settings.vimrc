"... vimwiki
  let g:vimwiki_folding='expr'
  let g:vimwiki_auto_header = 1
  let g:vimwiki_hl_cb_checked = 1
  " let g:vimwiki_listsyms = ' '
  let g:vimwiki_listsyms = ' ∙ﱤﱣ✓'

  let wiki_1 = {}
  let wiki_1.ext = '.md'
  let wiki_1.list_margin = 0
  let wiki_1.path = '~/vimwiki/'
  let wiki_1.syntax = 'markdown'
  let g:vimwiki_list = [wiki_1]

  " autocmd BufNewFile *.md :r! echo = %:t:r =
  " autocmd BufNewFile *.md :norm kddo


"... startify
  let g:startify_files_number = 8
  let g:startify_change_to_dir = 1
  let g:startify_enable_special = 0
  let g:startify_session_dir = '~/.vim/local/session'
  let g:startify_bookmarks = [ {'w': '~/vimwiki/index.md'} ]
  let g:startify_custom_header = map(startify#fortune#boxed(), '"    ".v:val')

  augroup Startify
    autocmd!
    autocmd User Startified setlocal laststatus=0
    autocmd User StartifyReady setlocal cursorline
    autocmd User StartifyBufferOpened set laststatus=2
    autocmd FileType startify map <buffer> <Leader>n :NERDTreeToggle<CR>
  augroup end

  let g:startify_lists = [
    \ { 'type': 'files',     'header': ['   MRU']        },
    \ { 'type': 'sessions',  'header': ['   Sessions']   },
    \ { 'type': 'bookmarks', 'header': ['   Bookmarks']  },
  \ ]


"... Goyo and limelight
  let g:goyo = 0
  let g:goyo_width = 110
  " let g:goyo_height = 100
  let g:limelight_paragraph_span = 1

  function! s:goyo_enter()
    let g:goyo = 1
    set signcolumn=no
    set showtabline=0
  endfunction

  function! s:goyo_leave()
    let g:goyo = 0
    hi iCursor guifg=red guibg=yellow
  endfunction

  augroup Goyo
    autocmd!
    autocmd! User GoyoLeave nested call <SID>goyo_leave()
    autocmd! User GoyoEnter nested call <SID>goyo_enter()
  augroup end

""... misc

  augroup Emmet
    autocmd!
    autocmd! FileType html,css EmmetInstall
  augroup end
  let g:user_emmet_install_global = 0


  let g:SexyScroller_MaxTime = 100
  let g:SexyScroller_EasingStyle = 2

  let markology_hlline_lower = 1
  let markology_hlline_upper = 1
  let g:markology_ignore_type = "p"

  let g:fzf_layout = { 'left': '~28%' }

  augroup Fizzypop
    autocmd!
    autocmd  FileType fzf set laststatus=0 noshowmode noruler
      \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler
  augroup end

  let g:gitgutter_highlight_lines = 1

