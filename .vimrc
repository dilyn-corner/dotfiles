" __   _(_)_ __ ___  _ __ ___
" \ \ / / | '_ ` _ \| '__/ __|
"  \ V /| | | | | | | | | (__
"   \_/ |_|_| |_| |_|_|  \___|

 
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-surround'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-airline/vim-airline'
Plug 'dylanaraps/wal.vim'
Plug 'ryanoasis/vim-devicons'
call plug#end()

"" Some basics:
	set guifont=Iosevka\ Nerd\ Font\ Complete\ Mono
 	set number relativenumber  " Relative line numbers
	set clipboard+=unnamedplus " Clipboard instead of registers
	set incsearch              " Incremental search
	set hlsearch               " Highlight results
    filetype plugin on         " Autodetect filetype
    syntax on                  " Built-in syntax highlighting
	set showmatch              " Briefly highlight matching bracket
	set showcmd                " Show commands as they come
	set breakindent            " Line wraps maintain indent
	set tabstop=4              " Tabs are 4 spaces
	set shiftwidth=4           " Set indentation column width
	set scrolloff=3            " Minimum lines to show above/below 
	set sidescrolloff=5        " Minimum columns to show left/right 
	set nostartofline          " Maintain cursor position for commands
	set expandtab              " Tabs are expanded into spaces
	set splitbelow             " Windows split down
	set splitright             " Windows split right

 	colorscheme wal

    
" Disable those fucking arrow keys
	no <down> <Nop>
	no <up> <Nop>
	no <right> <Nop>
	no <left> <Nop>
	ino <down> <Nop>
	ino <up> <Nop>
	ino <left> <Nop>
	ino <right> <Nop>


" For vim-airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
let g:webdevicons_enable_airline_tabline = 1
let g:webdevicons_enable_airline_statusline = 1


" For CoC
"" Apparently important settings
    set hidden          " TextEdit might fail without this
    set cmdheight=2     " More height for display messages
    set updatetime=300  " 300ms inactive -> swap file is written
    set shortmess+=c    " Don't pass messages to |ins-completion-menu|
    set signcolumn=yes  " Always show signcolumn

"" Tab completion
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Highlight symbol and reference 
autocmd CursorHold * silent call CocActionAsync('highlight')

set statusline^=%{coc#status()}
