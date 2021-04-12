call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
Plug 'joshdick/onedark.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'honza/vim-snippets'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'briancollins/vim-jst'
Plug 'luochen1990/rainbow'
Plug 'dyng/ctrlsf.vim'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'mattn/emmet-vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'tpope/vim-fugitive'
Plug 'jiangmiao/auto-pairs'
Plug 'editorconfig/editorconfig-vim'
" post install (yarn install | npm install) then load plugin only for editing supported files
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }

let g:rainbow_active = 1

call plug#end()

set splitbelow            " Make Split command open below instead of above
set tabstop=4 shiftwidth=4 expandtab            " Tabs are 2 spaces
set number relativenumber " Sets lint numbers as relative
set nu rnu                " Set current lint as absolute
let g:NERDTreeWinPos = "right"  " Puts NERDTree on the right
let NERDTreeMapOpenInTab='\r'
set mouse=a 	" Adds mouse integration
set clipboard+=unnamed
" Show the errors/warnings from COC with Shift+a
nnoremap <silent><nowait> <space>a :<C-u>CocDiagnostics<cr>

" Suggest fixes for errors/warnings from COC with Shift+g
nnoremap <silent><nowait> <space>g :<C-u>CocFix<cr>

" Open NERDTree with Shift+f
nnoremap <silent><nowait> <space>f :<C-u>NERDTreeToggle<cr>

nmap <silent> sv :source $MYVIMRC<CR>

" Make the COC popup less horrible to look at
highlight CocWarningFloat ctermfg=black
highlight CocErrorFloat ctermfg=white
highlight Pmenu ctermbg=red

" remapp dd to delete to blackhole as I use V with x to cut
nnoremap d "_d
vnoremap d "_d

" Add 'gd' command for go-to-definition
nmap <silent> gd <Plug>(coc-definition)

" Make gb remap to go back after a gd
nnoremap <silent><nowait> gb :bp<cr>

" Use <C-l> for trigger snippet expand.
imap <C-l> <Plug>(coc-snippets-expand)

" Use <C-j> for select text for visual placeholder of snippet.
vmap <C-j> <Plug>(coc-snippets-select)

" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<c-j>'

" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<c-k>'

" Use <C-j> for both expand and jump (make expand higher priority.)
imap <C-j> <Plug>(coc-snippets-expand-jump)

" Search project
nmap     sp :CtrlSF<space>
nmap     <C-F>f <Plug>CtrlSFPrompt
nmap     fp :FZF<cr>

"set foldmethod=indent
set foldmethod=syntax
set nofoldenable

source $HOME/.config/nvim/themes/onedark.vim
