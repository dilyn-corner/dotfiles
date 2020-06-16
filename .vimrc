call plug#begin('~/.vim/plugged')
Plug 'neovim/nvim-lsp'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'vifm/vifm.vim'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'dylanaraps/wal.vim'
Plug 'ryanoasis/vim-devicons'
call plug#end()

"" Some basics:
    set number relativenumber  " Relative line numbers
    set clipboard+=unnamedplus " Clipboard instead of registers
    set incsearch              " Incremental search
    set hlsearch               " Highlight results
    set showmatch              " Briefly highlight matching bracket
    set showcmd                " Show commands as they come
    set tw=80                  " 80 column limit
    set breakindent            " Line wraps maintain indent
    set tabstop=4              " Tabs are 4 spaces
    set shiftwidth=4           " Set indentation column width
    set expandtab              " Tabs are expanded into spaces
    set scrolloff=3            " Minimum lines to show above/below
    set sidescrolloff=5        " Minimum columns to show left/right
    set nostartofline          " Maintain cursor position for commands
    set splitbelow             " Windows split down
    set splitright             " Windows split right

    colorscheme wal

" Keymaps
"" Set the leader key
let mapleader=","
"" Unset last search pattern (remove highlighting)
nnoremap <silent> <esc> :noh<return><esc>
"" More natural split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
"" Disable those fucking arrow keys
nno <down> <Nop>
nno <up> <Nop>
nno <right> <Nop>
nno <left> <Nop>
ino <down> <Nop>
ino <up> <Nop>
ino <left> <Nop>
ino <right> <Nop>


" Vim Gitgutter
"" Create a hunk summary for the statusline
function! GitStatus()
    let [a,m,r] = GitGutterGetHunkSummary()
    return printf('+%d ~%d -%d', a, m, r)
endfunction

"" Next/Previous hunk
nmap ]h <Plug>(GitGutterNextHunk)
nmap [h <Plug>(GitGutterPrevHunk)


" For vim-airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
let g:webdevicons_enable_airline_tabline = 1
let g:webdevicons_enable_airline_statusline = 1


" Statusline
set statusline+=%{coc#status()}%{get(b:,'coc_current_function','')}
set statusline+=%{GitStatus()}
set statusline+=%{FugitiveStatusLine()}
