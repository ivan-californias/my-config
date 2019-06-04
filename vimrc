" Basic setup
set nocompatible
syntax enable
"set nowrap
set encoding=utf8
filetype plugin on

" Editor settings
set number
set ruler
set laststatus=2
set cursorline
highlight CursorLine cterm=NONE ctermbg=black
highlight LineNr ctermfg=gray ctermbg=black

" Hide buffers
set hidden
set background=dark
set switchbuf=usetab

" Netrw
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_winsize = 30

" Extra functionality
" Visual selection search
vnoremap // y/<C-R>"<CR>

" Temporary files to /tmp
set backupdir=/tmp//
set directory=/tmp//
set undodir=/tmp//

" Map arrow keys
nmap <esc>OA <Up>
nmap <esc>OB <Down>
nmap <esc>OC <Right>
nmap <esc>OD <Left>

" Switch tabs for spaces and control indentation
" set expandtab
" set shiftwidth=4
" set tabstop=4
set autoindent

" List invisible chars
"set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:.
"set list

" For Javascript switch tabs for spaces
autocmd Filetype javascript setlocal ts=2 sw=2 sts=0 expandtab
" For HTML switch tabs for spaces
autocmd Filetype html setlocal ts=2 sw=2 sts=0 expandtab
" For CSS switch tabs for spaces
autocmd Filetype css setlocal ts=2 sw=2 sts=0 expandtab
" For PHP switch tabs for spaces
autocmd Filetype php setlocal ts=4 sw=4 sts=0 expandtab
" For Vue switch tabs for spaces
autocmd BufEnter *.vue setlocal ts=2 sw=2 sts=0 expandtab
" For Robotframeworkswitch tabs for spaces
autocmd BufEnter *.robot setlocal ts=4 sw=4 sts=0 expandtab
" For Terraform switch tabs for spaces
autocmd BufEnter *.tf setlocal ts=2 sw=2 sts=0 expandtab

" Dont search in whole git for command-T instead current pwd
let g:CommandTTraverseSCM='pwd'
