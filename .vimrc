set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
set number
set hlsearch

" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Commands:
" :PlugInstall - installs any plugins, restart vim to take effect
" :PlugClean - clean any unused plugins

" Declare the list of plugins.
Plug 'scrooloose/nerdtree'
map <C-o> :NERDTreeToggle<CR>

Plug 'ctrlpvim/ctrlp.vim'

Plug 'pangloss/vim-javascript'
let g:javascript_plugin_jsdoc = 1

Plug 'terryma/vim-multiple-cursors'
let g:multi_cursor_use_default_mapping = 0
let g:multi_cursor_start_word_key      = '<C-n>'
let g:multi_cursor_next_key            = '<C-n>'
let g:multi_cursor_quit_key            = '<Esc>'

Plug 'ErichDonGubler/vim-sublime-monokai'
colorscheme sublimemonokai

" List ends here. Plugins become visible to Vim after this call.
call plug#end()
