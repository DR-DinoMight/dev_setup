call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
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

let g:rainbow_active = 1

call plug#end()

set splitbelow            " Make Split command open below instead of above
set tabstop=2             " Tabs are 2 spaces
set number relativenumber " Sets lint numbers as relative
set nu rnu                " Set current lint as absolute
let g:NERDTreeWinPos = "right"  " Puts NERDTree on the right
set mouse=a 	" Adds mouse integration

" Show the errors/warnings from COC with Shift+a
nnoremap <silent><nowait> <space>a :<C-u>CocDiagnostics<cr>

" Suggest fixes for errors/warnings from COC with Shift+g
nnoremap <silent><nowait> <space>g :<C-u>CocFix<cr>

" Open NERDTree with Shift+f
nnoremap <silent><nowait> <space>f :<C-u>NERDTreeToggle<cr>

nnoremap <leader>sv :source $MYVIMRC<CR>

" Make the COC popup less horrible to look at
highlight CocWarningFloat ctermfg=black
highlight CocErrorFloat ctermfg=white
highlight Pmenu ctermbg=red

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

source $HOME/.config/nvim/themes/onedark.vim
