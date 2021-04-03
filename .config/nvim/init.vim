call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
Plug 'joshdick/onedark.vim'
Plug 'ryanoasis/vim-devicons'

call plug#end()

set splitbelow            " Make Split command open below instead of above
set tabstop=2             " Tabs are 2 spaces
set number relativenumber " Sets lint numbers as relative
set nu rnu                " Set current lint as absolute
let g:NERDTreeWinPos = "right"  " Puts NERDTree on the right
set mouse=a " Adds mouse integration

" Show the errors/warnings from COC with Shift+a
nnoremap <silent><nowait> <space>a :<C-u>CocDiagnostics<cr>

" Suggest fixes for errors/warnings from COC with Shift+g
nnoremap <silent><nowait> <space>g :<C-u>CocFix<cr>

" Open NERDTree with Shift+f
nnoremap <silent><nowait> <space>f :<C-u>NERDTreeToggle<cr>

" Make the COC popup less horrible to look at
highlight CocWarningFloat ctermfg=black
highlight CocErrorFloat ctermfg=white
highlight Pmenu ctermbg=red

" Add 'gd' command for go-to-definition	
nmap <silent> gd <Plug>(coc-definition)

source $HOME/.config/nvim/themes/onedark.vim
