
noremap ; :
noremap : ;

inoremap <c-c> <esc>
inoremap kj <esc>
cnoremap kj <c-c> " fix exit after typing :help in command

" vim
nnoremap <leader>w :w<cr>

nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk
" motions for splits
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

nnoremap <leader><leader> <c-^>
nnoremap <leader>' :bprev<cr>

nnoremap <leader>h :help<space>

nnoremap <leader>s :%s/\<<C-r><C-w>\>/
vnoremap <leader>s :%s/\<<C-r><C-w>\>/

nnoremap <silent> <leader>c :nohlsearch<cr>

nnoremap <leader>ee :e %<cr>
nnoremap <leader>ef :e ~/.config/fish/config.fish<cr>
nnoremap <leader>ev :e ~/.vim/<cr>
nnoremap <leader>eg :e ~/.gitconfig<cr>
nnoremap <leader>rv :source $MYVIMRC<cr>

vnoremap <leader>p "*p
nnoremap <leader>p "*p

vnoremap <leader>y "*y
nnoremap <leader>y "*y

nnoremap <tab> >>
nnoremap <s-tab> <<

" FIXME: When sharing Vim with someone else
inoremap <esc> <nop>
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <right> <nop>
nnoremap <left> <nop>

" for python and ruby and swift
inoremap ; :
inoremap : ;
