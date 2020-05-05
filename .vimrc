if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
                \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source ~/.vimrc
endif

call plug#begin('~/.vim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'dylanaraps/fff.vim'
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


" For CoC
"" Apparently important settings
    set hidden          " TextEdit might fail without this
    set nobackup        " Some servers cry with
    set nowritebackup   " backups enabled
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

"" Use `[c` and `]c` to navigate diagnostics
nmap <silent> [d <Plug>(coc-diagnostic-prev)
nmap <silent> ]d <Plug>(coc-diagnostic-next)

"" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

"" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

"" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')


" Vim Gitgutter
"" Create a hunk summary for the statusline
function! GitStatus()
    let [a,m,r] = GitGutterGetHunkSummary()
    return printf('+%d ~%d -%d', a, m, r)
endfunction

"" Next/Previous hunk
nmap ]h <Plug>(GitGutterNextHunk)
nmap [h <Plug>(GitGutterPrevHunk)


" fff
"" hotkey, split size, split direction
nnoremap f :F<CR>
let g:fff#split = "25vnew"
let g:fff#split_direction = "nosplitbelow nosplitright"


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
