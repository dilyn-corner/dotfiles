"" Plugins!
call plug#begin('~/.vim/plugged')
Plug 'dense-analysis/ale'
Plug 'itchyny/lightline.vim'
Plug 'maximbaz/lightline-ale'
Plug 'itchyny/vim-gitbranch'
Plug 'airblade/vim-gitgutter'
call plug#end()

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
    set updatetime=100      " Faster update times
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
" Next/Previous hunk
nmap ]h <Plug>(GitGutterNextHunk)
nmap [h <Plug>(GitGutterPrevHunk)
" Define the hunk status function
function! GitStatus()
  let [a,m,r] = GitGutterGetHunkSummary()
  return printf('+%d ~%d -%d', a, m, r)
endfunction


"" lightline 
" Our font is too big
set laststatus=2
" Useless modes
set noshowmode
" Modify the statusline a bit
" Ensure it's empty
let g:lightline = {}
" Define ALE warnings/errors/information/status
let g:lightline.component_expand = {
    \  'linter_checking': 'lightline#ale#checking',
    \  'linter_infos': 'lightline#ale#infos',
    \  'linter_warnings': 'lightline#ale#warnings',
    \  'linter_errors': 'lightline#ale#errors',
    \  'linter_ok': 'lightline#ale#ok',
    \ }
let g:lightline.component_type = {
    \     'linter_checking': 'right',
    \     'linter_infos': 'right',
    \     'linter_warnings': 'warning',
    \     'linter_errors': 'error',
    \     'linter_ok': 'right',
    \ }
" Print the statusline
let g:lightline = { 
    \ 'colorscheme': 'wombat',
    \ 'active': {
    \   'left': [[ 'mode', 'paste' ],
    \            [ 'gitbranch', 'gitgutter', 'readonly', 'filename', 'modified' ]],
    \   'right': [[ 'lineinfo' ],
    \             [ 'percent' ],
    \             [ 'fileformat', 'fileencoding', 'filetype' ],
    \             [ 'linter_checking', 'linter_errors', 'linter_warnings', 'linter_infos', 'linter_ok' ]],
    \ },
    \ 'component_function': { 
    \ 'gitbranch': 'gitbranch#name', 
    \ 'gitgutter': 'GitStatus',
    \ },
    \ }


" colors
colorscheme vibrant-night
