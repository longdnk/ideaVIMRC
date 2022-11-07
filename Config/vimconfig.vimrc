set ideajoin
set idearefactormode=keep
set surround
set easymotion
set showmode
"set relativenumber
set mouse=a
set ignorecase
set smartcase
"set tabstop=2
set incsearch
set hlsearch

syntax on

let mapleader = " "

"inoremap kk <ESC>

noremap <Esc> <nop>
nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>

nnoremap <C-j> :m +1<CR>
nnoremap <C-k> :m -2<CR>
inoremap <C-j> <Esc>:m +1<CR>gi
inoremap <C-k> <Esc>:m -2<CR>gi

" system clipboard
vmap <leader>y "+y
vmap <leader>d "+d
nmap <leader>y "+yy
nmap <leader>p "+p
nmap <leader>P "+P
vmap <leader>p "+p
vmap <leader>P "+P

" scrolling
nmap <leader>d <C-d>
nmap <leader>u <C-u>
vmap <leader>d <C-d>
vmap <leader>u <C-u>

" actions
nmap <leader>h <Action>(PreviousTab)
nmap <leader>l <Action>(NextTab)
nmap <leader>bd <Action>(CloseEditor)
nmap <leader>i <Action>(Generate)
nmap <leader>m <Action>(Git.Menu)
nmap <leader>s <Action>(QuickChangeScheme)
nmap <leader>/ <Action>(ShowErrorDescription)
nmap <leader>e <Action>(GotoNextError)
nnoremap <leader><leader> <C-Tab>

set NERDTree
let g:NERDTreeMapActivateNode='l'
let g:NERDTreeMapJumpParent='h'
noremap <Leader>y "*y
noremap <Leader>Y "+y
noremap <Leader>p "*p
noremap <Leader>P "+p
set clipboard+=unnamed
set paste
nmap <c-l> <Action>(NextTab)
nmap <c-h> <Action>(PreviousTab)
nmap <c-b> <Action>(CloseEditor)
nmap <c-m> <Action>(Git.Menu)
nmap <c-i> <Action>(Generate)
nmap <c-s> <Action>(QuickChangeScheme)
"nmap <c-r> <Action>(Run)

nnoremap H ^
nnoremap L $
nnoremap J 5j
nnoremap K 5k

nnoremap <leader>zc :action CollapseRegion<CR>
nnoremap <leader>zo: action ExpandRegion<CR>

sethandler <c-r> a:vim
nnoremap <c-t> :action ActivateTerminalToolWindow<CR>
nnoremap <c-/> :action FindInPath<CR>
nnoremap <c-r> :action RecentFiles<CR>
nnoremap <c-a> :action GotoAction<CR>
nnoremap <c-z> :action ToggleDistractionFreeMode<CR>
nnoremap <c-x> :action HideAllWindows<CR>
nnoremap <c-s> :action FileStructurePopup<CR>
nnoremap <c-p> :action JumpToLastWindow<CR>
nnoremap <c-\> :action SplitVertically<CR>
nnoremap <c--> :action SplitHorizontally<CR>
nnoremap <c-f> :action GotoFile<CR>

nnoremap <c-m> :action MoveEditorToOppositeTabGroup<CR>
nnoremap ;q :action CloseContent<CR>
nnoremap ;a :action CloseAllEditors<CR>


"nnoremap <leader>t :action Terminal.OpenInTerminal<CR>

"set/move selected file in here
vnoremap J :action MoveLineDown<CR>
vnoremap K :action MoveLineUp<CR>

"yanked line
set highlightedyank
let g:highlightedyank_highlight_color = "rba(160, 160, 160, 150)"
"let g:highlightedyank_highlight_color = "#00dfff"
let g:highlightedyank_highlight_duration = "500"

vnoremap > >gv
vnoremap < <gv
