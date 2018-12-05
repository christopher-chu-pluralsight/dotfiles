set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab
set number
set splitright
set wildmenu

syntax on
set hlsearch 
set incsearch

" Note: these do not work when you have have set a color
" using the `colorscheme` command. You need to directly
" modify the color file itself.
highlight Search guibg=red ctermbg=red term=italic
highlight IncSearch guibg=black ctermbg=black term=underline

" Filetype-specific indentation can be configured
" by adding files to ~/.vim/indent/
filetype indent on

let mapleader=","

vmap > >gv  " stay in visual mode while indenting 
vmap < <gv  " stay in visual mode while unindenting
" nnoremap <leader><lt> <C-w>20<lt>
" nnoremap <leader><gt> <C-w>20<gt>

" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Commands:
" :PlugInstall - installs any plugins, restart vim to take effect
" :PlugClean - clean any unused plugins

" Declare the list of plugins.

" Status bar at bottom of screen
Plug 'itchyny/lightline.vim'
set laststatus=2 " Without this line, it only shows up during splits

Plug 'scrooloose/nerdtree'
map <C-o> :NERDTreeToggle<CR>

Plug 'ctrlpvim/ctrlp.vim'
" Note: if your custom ignore patterns are not working,
" try running :ClearAllCtrlPCaches (or press F5)
let g:ctrlp_custom_ignore = { 'dir': 'node_modules' }

" Syntax for JS
Plug 'pangloss/vim-javascript'
let g:javascript_plugin_jsdoc = 1

" Multi-select like sublime
" Plug 'terryma/vim-multiple-cursors'
" let g:multi_cursor_use_default_mapping = 0
" let g:multi_cursor_start_word_key      = '<C-n>'
" let g:multi_cursor_next_key            = '<C-n>'
" let g:multi_cursor_quit_key            = '<Esc>'

" Sublime colorscheme
Plug 'ErichDonGubler/vim-sublime-monokai'
colorscheme sublimemonokai

" Shows git info about each line
Plug 'airblade/vim-gitgutter'

" Python auto-complete
Plug 'davidhalter/jedi-vim'
let g:jedi#use_splits_not_buffers = 'left' 

" Find-in-file searching
" Prereq: `brew install ack`
Plug 'mileszs/ack.vim'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()
