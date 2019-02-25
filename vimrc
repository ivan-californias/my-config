" Temporary files to /tmp
set backupdir=/tmp//
set directory=/tmp//
set undodir=/tmp//

" Map arrow keys
nmap <esc>OA <Up>
nmap <esc>OB <Down>
nmap <esc>OC <Right>
nmap <esc>OD <Left>

set hidden

" background
set background=dark
" use newtabs for buffers
set switchbuf=usetab
" Switch tabs for spaces and control indentation
" set expandtab
" set shiftwidth=4
" set tabstop=4
set autoindent
set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:.
"set list

" For Javascript switch tabs for spaces
autocmd Filetype javascript setlocal ts=2 sw=2 sts=0 expandtab
" For HTML switch tabs for spaces
autocmd Filetype html setlocal ts=2 sw=2 sts=0 expandtab
" For CSS switch tabs for spaces
autocmd Filetype css setlocal ts=2 sw=2 sts=0 expandtab
" For Vue switch tabs for spaces
autocmd BufEnter *.vue setlocal ts=2 sw=2 sts=0 expandtab
" For Robotframeworkswitch tabs for spaces
autocmd BufEnter *.robot setlocal ts=4 sw=4 sts=0 expandtab
" For Terraform switch tabs for spaces
autocmd BufEnter *.tf setlocal ts=2 sw=2 sts=0 expandtab

" Dont search in whole git for command-T instead current pwd
let g:CommandTTraverseSCM='pwd'
