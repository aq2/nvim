  source ~/.config/nvim/colors/gravyLine.vim

  let g:lightline = {
    \  'colorscheme': 'gravyLine',
    \  'active': {
    \    'left': [['mode'], ['buffers']] ,
    \    'right': [['percent'], ['lineinfo'], ['gitBranch']]
    \  },
    \  'inactive': {
    \    'right': [],
    \  },
    \  'separator': { 'left': '' , 'right': '' },
    \  'subseparator': { 'left': '', 'right': '' },
    \  'component_function': {
    \    'mode': 'MyMode',
    \    'gitBranch': 'MyGit',
    \    'percent': 'MyPercent',
    \    'lineinfo': 'MyLineInfo',
    \  },
  \ }


  let g:lightline#bufferline#modified  = ' 😱'
  let g:lightline#bufferline#read_only  = ' '
  let g:lightline#bufferline#filename_modifier = ':~:.'
  let g:lightline.component_type   = {'buffers': 'tabsel'}
  let g:lightline.component_expand = {'buffers': 'lightline#bufferline#buffers'}
  let g:lightline.tabline          = {'left': [['buffers']], 'right': [['close']]}


  function! MyGit()
    return winwidth(0) > 70 ? gitbranch#name() : ''
  endfunction!

  function! MyPercent()
    return  winwidth(0) > 70 ? line('.') * 100 / line('$') . '%' : ''
  endfunction

  function! MyLineInfo()
    return  winwidth(0) > 70 ? line('.').':'. col('.') : ''
  endfunction

	function! MyMode()
	  if winwidth(0) < 46
	    setlocal statusline=\ 
	    return
	  endif
	   return lightline#mode()
	endfunction

  function! LightlineUpdateAQ()
    if g:goyo==0
      call lightline#update()
    endif
  endfunction

  augroup UpdateLightline
    autocmd!
    au BufWritePost,TextChanged,TextChangedI * call LightlineUpdateAQ()
  augroup end


" buffer mappings - do i need so many??
  nmap <Leader>1 <Plug>lightline#bufferline#go(1)
  nmap <Leader>2 <Plug>lightline#bufferline#go(2)
  nmap <Leader>3 <Plug>lightline#bufferline#go(3)
  nmap <Leader>4 <Plug>lightline#bufferline#go(4)
  nmap <Leader>5 <Plug>lightline#bufferline#go(5)
  nmap <Leader>6 <Plug>lightline#bufferline#go(6)

