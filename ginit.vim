" GuiLinespace 1
" GuiFont Fantasque Sans Mono:h15
" call GuiWindowMaximized(1)

set go=M
set mousehide mousemodel=popup mouse=a

" nvim-gtk
call rpcnotify(1, 'Gui', 'Font', 'Fantasque Sans Mono 15')
call rpcnotify(1, 'Gui', 'Option', 'Cmdline', 1)
call rpcnotify(1, 'Gui', 'Option', 'Tabline', 0)
