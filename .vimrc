" Make vim more useful
set nocompatible

" Set syntax highlighting options
set t_Co=256
set background=dark
syntax on
colorscheme molokai

" Tell vim to remember certain things when we exit
"  '10  :  marks will be remembered for up to 10 previously edited files
"  "100 :  will save up to 100 lines for each register
"  :20  :  up to 20 lines of command-line history will be remembered
"  %    :  saves and restores the buffer list
"  n... :  where to save the viminfo files
set viminfo='10,\"100,:20,%,n~/.viminfo

function! ResCur()
  if line("'\"") <= line("$")
    normal! g`"
    return 1
  endif
endfunction

augroup resCur
  autocmd!
  autocmd BufWinEnter * call ResCur()
augroup END

" Set some junk
set cursorline
set encoding=utf-8 nobomb
set hlsearch
set ignorecase
set incsearch
set nu
set title
set wildchar=<TAB>
set wrapscan
set clipboard=unamed

" Fix page up and down
map <PageUp> <C-U>
map <PageDown> <C-D>
imap <PageUp> <C-O><C-U>
imap <PageDown> <C-O><C-D>

vmap '' :w !pbcopy<CR><CR>

" JSON
au BufRead,BufNewFile *.json set ft=json syntax=javascript
