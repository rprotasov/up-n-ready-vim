execute pathogen#infect()
set number
set shiftwidth=4
set tabstop=4
set pastetoggle=<F2>
map <C-n> :NERDTreeToggle<CR>
map <C-h> :noh<CR>
if has('patch-7.4.1778')
  set guicolors
endif
if has('nvim')
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif
