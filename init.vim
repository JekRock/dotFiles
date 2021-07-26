let mapleader = "\<Space>"

" === General configuration ===
set number				                " show line numbers
set numberwidth=4			            " line numbers indent
" set nowrap				              " do not wrap lines
set showmatch				              " highlight matching brace
set visualbell				            " use visual bell (no beeping)
" set hlsearch				            " highlight all search results
set incsearch     		            " do incremental searching
set ignorecase				            " always case-insensitive search
" set spell spelllang=en_us,ru_ru	" enable spell checking
syntax on				                  " enable syntax highlighting
set history=50				            " set history buffer size

if has('mouse')
  set mouse=a				              " enable mouse support in all modes
endif

set ruler                         " show the cursor position all the time

" Softtabs, 2 spaces
set tabstop=2
set shiftwidth=2
set shiftround
set expandtab

set modelines=0                   " disable modelines as a security precaution
set nomodeline

" Turn backup off, since most stuff is in git anyway...
set nobackup
set nowritebackup
set nowb
set noswapfile

" Keep undo history across sessions, by storing in file
set undodir=/tmp/.vim/backups
set undofile


" === Key maps ===
" Turn off linewise keys. Normally, the `j' and `k' keys move the cursor down one entire line. with line wrapping on, this can cause the cursor to actually skip a few lines on the screen because it's moving from line N to line N+1 in the file. I want this to act more visually -- I want `down' to mean the next line on the scree
nnoremap <expr> k (v:count == 0 ? 'gk' : 'k')
nnoremap <expr> j (v:count == 0 ? 'gj' : 'j')

" Map ctrl-movement keys to window switching
map <C-k> <C-w><Up>
map <C-j> <C-w><Down>
map <C-l> <C-w><Right>
map <C-h> <C-w><Left>

" Insert the current time
:nnoremap <F5> "=strftime("%Y-%m-%d")<CR>P
:inoremap <F5> <C-R>=strftime("%Y-%m-%d")<CR>

