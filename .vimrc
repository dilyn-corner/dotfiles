"" Plugins!
call plug#begin('~/.vim/plugged')
Plug 'dense-analysis/ale'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'dylanaraps/wal.vim'
Plug 'ryanoasis/vim-devicons'
call plug#end()

"
"" Some basics:
    set nocp                " Less vi more improved
    filetype plugin on      " Enable filetype detection
    syntax on               " Enable syntax highlighting
"" Formating
    set shm=at              " Shorten messages
    set tw=80               " 80 column limit
    set et                  " Tabs are expanded into spaces
    set ts=4                " Tabs are 4 spaces
    set sw=4                " Set indentation column width
    set bri                 " Line wraps maintain indent
    set nu rnu              " Relative line numbers
    set ru                  " Cursor ruler
"" Altering
    set cb+=unnamedplus     " Clipboard instead of registers
    set bs=indent,eol,start " Make backspace behave properly
"" Navigating
    set ww=h,l              " h and l navigate line wraps, as expected
    set sm                  " Briefly highlight matching bracket
    set is                  " Incremental search
    set hls                 " Highlight results
    set sc                  " Show commands as they come
    set so=3                " Minimum lines to show above/below
    set siso=5              " Minimum columns to show left/right
    set nosol               " Maintain cursor position for commands
    set sb                  " Windows split down
    set spr                 " Windows split right


" wal
colorscheme wal


" Keymaps
" Set the leader key
let mapleader=","
" Unset last search pattern (remove highlighting)
nnoremap <CR> :noh<CR><CR>
" Disable adding comments to lines automagically
"autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
" More natural split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" In order to change split size, you can do ctrl-w +/-/>/<


"" ALE
" Completion, Information
let g:ale_completion_enabled = 1
set omnifunc=ale#completion#OmniFunc
let g:ale_completion_delay = 500
let g:ale_set_balloons=1
" Linting
let g:ale_linters = {'c': ['clang', 'clangd']}
" Code Navigation
nmap gd :ALEGoToDefinitionInVSplit<CR>
nmap gr :ALEReferences<CR>
" Jump between errors
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)


"" gitgutter
" Create a hunk summary for the statusline
function! GitStatus()
    let [a,m,r] = GitGutterGetHunkSummary()
    return printf('+%d ~%d -%d', a, m, r)
endfunction
" Next/Previous hunk
nmap ]h <Plug>(GitGutterNextHunk)
nmap [h <Plug>(GitGutterPrevHunk)


"" vim-airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
let g:webdevicons_enable_airline_tabline = 1
let g:webdevicons_enable_airline_statusline = 1


"" statusline
set statusline+=%{GitStatus()}
