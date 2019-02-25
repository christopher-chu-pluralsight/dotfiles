set tabstop=2 shiftwidth=2 " Default tab width
set softtabstop=0          " ???
set expandtab              " Spaces instead of tabs 
set smarttab               " ???

autocmd Filetype python setlocal ts=4 sw=4 et sta

set backspace=2  " make backspace work; this broke when I brew installed vim
set number       " Show line numbers
set splitright   " New splits open to the right instead of left
set wildmenu     " Needed for auto-complete features

syntax on        " Enable syntax highlighting (usually covered by colorscheme)
set hlsearch     " Highlight matching search terms
set incsearch    " Highlight as soon as you start typing

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
nnoremap <leader>[ :exe "vertical resize -15" <CR>
nnoremap <leader>] :exe "vertical resize +15" <CR>

" Still trying to figure this one out...
" command TrailingWhitespace :exe "%s/\s\+$//g"    

" Vim Plug - copy this file to `autoload`:
" https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

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


" Color Schemes
"Plug 'ErichDonGubler/vim-sublime-monokai'
colorscheme sublimemonokai
"Plug 'morhetz/gruvbox'
"colorscheme gruvbox
"colorscheme chris1

" Shows git info about each line
Plug 'airblade/vim-gitgutter'

" Python auto-complete
" Plug 'davidhalter/jedi-vim'
" let g:jedi#use_splits_not_buffers = 'left' 

" Find-in-file searching
" Prereq: `brew install ack`
Plug 'mileszs/ack.vim'

" Close matching parens
Plug 'rstacruz/vim-closer'

" Python IDE - :help pymode
Plug 'python-mode/python-mode', { 'branch': 'develop' }
let g:pymode_python = 'python3'                               " Set syntax to python3
let g:pymode_breakpoint_bind = '<leader>b'                    " Breakpoint shortcut
let g:pymode_breakpoint_cmd = 'import ipdb; ipdb.set_trace()' " Breakpoint command
let g:pymode_lint_on_write = 0

" List ends here. Plugins become visible to Vim after this call.
call plug#end()
