set number
set relativenumber
set cursorline
nnoremap x x:w<cr>
nnoremap dd dd:w<cr>

" Turn off highlighting with <esc> in normal mode
"nnoremap <esc> :noh<cr>

" Remove the arrow keys mapping in normal mode
nnoremap <down> :echoe "use j"<cr>
nnoremap <up> :echoe "use k"<cr>
nnoremap <left> :echoe "use h"<cr>
nnoremap <right> :echoe "use l"<cr>
inoremap <down> <esc>:echoe "Go to normal mode"<cr>a
inoremap <up> <esc>:echoe "Go to normal mode"<cr>a
inoremap <left> <esc>:echoe "Go to normal mode"<cr>a
inoremap <right> <esc>:echoe "Go to normal mode"<cr>a

" Change the word to upper case
nmap U viwwhU<esc>

" Change the word to lower case
nmap L viwwhu<esc>

let mapleader = " "
let maplocalleader = ","

" Make <++> a placeholder
function! Useless_func()
execute "normal! /<++>\<cr>4x:noh\<cr>"
if col('.') == (col('$')-1)
    startinsert!
else
    startinsert
endif
endfunction

inoremap <D-j> <esc>: call Useless_func()<cr>
nnoremap <D-j> /<++><cr>4x:noh<cr>
nnoremap <leader>j /<++><cr>4x:noh<cr>
vnoremap <D-j> /<++><cr>4x:noh<cr>
inoremap <D-J> <++>
nnoremap <D-J> i<++>
vnoremap <D-J> i<++>
nnoremap + a<++><esc>

" And of course, a mapping for saving
nnoremap <leader>w :w<cr>

" Open the .vim/customization director
nnoremap <leader>src :tabedit ~/.vimrc<cr>:split ~/.vim/customization<cr>

" Map <leader><leader> to zz (center cursor)
nnoremap <leader><leader> zt

" Tab commands
nnoremap <leader>to :tabedit 
nnoremap <leader>tn :tabn<cr>
nnoremap <leader>tp :tabp<cr>
" Close the tab
nnoremap <leader>tq :call QuitWithoutSaving('tabclose!')<cr>

" Window commands
nnoremap <leader>wov :vsplit 
nnoremap <leader>woh :split 
" Switch between windows
nnoremap <leader>ww :wincmd w<cr>
nnoremap <leader>wk :wincmd k<cr>
nnoremap <leader>wj :wincmd j<cr>
nnoremap <leader>wh :wincmd h<cr>
nnoremap <leader>wl :wincmd l<cr>
nnoremap <leader>wq :call QuitWithoutSaving('quit!')<cr>

" Close all windows 
nnoremap <leader>q :call QuitWithoutSaving('quitall!')<cr>

" Switch between buffers
nnoremap <leader>bp :bp<cr>
nnoremap <leader>bn :bn<cr>

" Open file explorer
nnoremap <leader>ls  :NERDTreeToggle<cr>
nnoremap <leader>tls :tabe %:h<cr>
nnoremap <leader>vls :Vexplore<cr>
nnoremap <leader>hls :Hexplore<cr>

" Git shortcuts
nnoremap <leader>gg :Gedit<cr>
nnoremap <leader>gv :Gvsplit<cr>
nnoremap <leader>gh :Gsplit<cr>
nnoremap <leader>gd :Gdiff<cr>
nnoremap <leader>gc :Gcommit<cr>
nnoremap <leader>gs :Gstatus<cr>

" Make the return key do something useful in normal mode
" Make it actually insert a new line
nnoremap <cr> $a<cr>x<bs><c-c>

" Jump to the last position set by jk
nnoremap <leader>g `a

" Toggle relative line numbering on or off
nnoremap <leader>n :set relativenumber!<cr>

" Some fast jumping around
nnoremap fj   10j
nnoremap ffj  20j
nnoremap fffj 30
nnoremap fk   10k
nnoremap ffk  20k
nnoremap fffk 30k

" Paste from register 0
nnoremap <leader>p "0p
" Paste from system clipboard
nnoremap <leader>v "+p
" Copy to the system clipboard
nnoremap <leader>y "+y

" some nice imaps for {}, (), ...
"inoremap {} {}<++><c-c>4hi
"inoremap () ()<++><c-c>4hi
"inoremap [] []<++><c-c>4hi

" smart backspace
" <c-c> instead of <esc> to avoid triggering autocmds
" inoremap <BS> <bs><c-c>: call SmartBackspace(4)<cr>

" Add a new mapping to move things from the delete register to the yank
" register
nnoremap <leader>m let @0=@"<cr>
