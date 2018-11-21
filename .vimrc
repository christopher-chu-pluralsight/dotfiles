set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab
set number
set hlsearch
set splitright
set wildmenu

" Filetype-specific indentation can be configured
" by adding files to ~/.vim/indent/
filetype indent on

let mapleader=","

" nnoremap <leader><lt> <C-w>20<lt>
" nnoremap <leader><gt> <C-w>20<gt>

" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Commands:
" :PlugInstall - installs any plugins, restart vim to take effect
" :PlugClean - clean any unused plugins

" Declare the list of plugins.

Plug 'itchyny/lightline.vim'

Plug 'scrooloose/nerdtree'
map <C-o> :NERDTreeToggle<CR>

Plug 'ctrlpvim/ctrlp.vim'
" Note: if your custom ignore patterns are not working,
" try running :ClearAllCtrlPCaches (or press F5)
let g:ctrlp_custom_ignore = { 'dir': 'node_modules' }

Plug 'pangloss/vim-javascript'
let g:javascript_plugin_jsdoc = 1

Plug 'terryma/vim-multiple-cursors'
let g:multi_cursor_use_default_mapping = 0
let g:multi_cursor_start_word_key      = '<C-n>'
let g:multi_cursor_next_key            = '<C-n>'
let g:multi_cursor_quit_key            = '<Esc>'

Plug 'ErichDonGubler/vim-sublime-monokai'
colorscheme sublimemonokai

Plug 'airblade/vim-gitgutter'

Plug 'davidhalter/jedi-vim'
let g:jedi#use_splits_not_buffers = 'left' 


" List ends here. Plugins become visible to Vim after this call.
call plug#end()
