let mapleader = ","

" EDITOR
" Move line
"nmap <silent> <A-down> :move +1<CR>
"nmap <silent> <A-up> :move -2<CR>

" Duplicated line 
nmap <silent> z<Down> :copy +0<CR>  
nmap <silent> zj :copy +0<CR>  
nmap <silent> z<Up> :copy -1<CR>
nmap <silent> zk :copy -1<CR>

" Enable and disable spell checker
map <silent> <leader>s :setlocal spell!<CR>

" Insert new line without leaving normalmode
nnoremap n o<Esc>0"_D
nnoremap N O<Esc>0"_D

"Enable and disable auto comment
map <leader>c :setlocal formatoptions-=cro<CR>
map <leader>C :setlocal formatoptions=cro<CR>

"Enable and disable auto indentation
map <leader>a :setlocal autoindent<CR>
map <leader>A :setlocal noautoindent<CR>

nnoremap <S-C-p> "0p
" Delete without yank
nnoremap <leader>d "_d
nnoremap x "_x

" Increment/decrement
nnoremap + <C-a>
nnoremap - <C-x>

" Delete a word backwards
" nnoremap dw vb"_d

" Select all
nmap <C-a> gg<S-v>G

" Search for selected text, forwards or backwards.
vnoremap <silent> * :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy/<C-R><C-R>=substitute(
  \escape(@", '/\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>
vnoremap <silent> # :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy?<C-R><C-R>=substitute(
  \escape(@", '?\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>

"----------------------------------------------

"WINDOWS
" Split window
nmap ss :split<CR><C-w>w
nmap sv :vsplit<CR><C-w>w

" Move window
nmap <Space> <C-w>w
map s<left> <C-w>h
map s<up> <C-w>k
map s<down> <C-w>j
map s<right> <C-w>l
map sh <C-w>h
map sk <C-w>k
map sj <C-w>j
map sl <C-w>l

" Keybindings for split resizing
noremap <silent> <S-l> :vertical resize +2<CR>
noremap <silent> <S-h> :vertical resize -2<CR>
noremap <silent> <S-k> :resize +2<CR>
noremap <silent> <S-j> :resize -2<CR>

" MANAGING BUFFERS
nnoremap <A-C> :bprevious<CR>
nnoremap <A-c> :bnext<CR>
":ls	List the current buffers (including their numbers).
":b <number>	Display the buffer with the given number.
":b <partial>	Display the first buffer matching the partial name (or press Tab for name completion).
":bd	Delete the current buffer; will fail if unsaved (nothing is deleted).
nnoremap bd :bd<CR>
":bd!	Delete the current buffer; will discard any changes (changes are lost).
nnoremap bf :bd!<CR>

" MANAGING TABS
"nnoremap <Tab> gt
"nnoremap <S-Tab> gT
"nnoremap <silent> <A-t> :TabVifm<CR>
nnoremap <silent> tn :tabnew<CR> 
nnoremap <silent> t- :tabmove -<CR>
nnoremap <silent> t+ :tabmove +<CR>
nnoremap <silent> tc :tabclose<CR>
nnoremap <silent> to :tabonly<CR>
nnoremap <silent> t0 :tabfirst<CR>
nnoremap <silent> t9 :tablast<CR>
"gt            go to next tab
"Ctrl-PgDn     go to next tab
"gT            go to previous tab
"Ctrl-PgUp     go to previous tab
"{i}gt         go to tab in position i

" Open terminal in split
nnoremap <silent> <leader>pt :sp<space>\|<space>:terminal<CR>
nnoremap <silent> <leader>vt :vs<space>\|<space>:terminal<CR>

" MANAGING SPLITS
set splitbelow splitright

" Change splits from vertical to horizontal and vice versa
" Horizontal to vertical
map <leader>th <C-w>t<C-w>H
" Vertical to horizontal
map <leader>tk <C-w>t<C-w>K

" TERMINAL
tmap <Esc> <C-\><C-n>
