set shell=bash
set backspace=indent,eol,start

set t_Co=256
nnoremap <silent> <Leader>hl :nohl<CR><C-l>
nmap <Space>r <Plug>(quickrun)

highlight ColorColumn ctermbg=blue
set colorcolumn=80

"Search and replace under cursor"
:nnoremap <Leader>s :%s/\<<C-r><C-w>\>//gc<Left><Left><Left>


if has('vim_starting')
  set nocompatible               " Be iMproved
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'

" youCompleteMe
NeoBundle 'valloric/youcompleteme'
"supertab
NeoBundle 'ervandew/supertab'
" git integration
NeoBundle 'tpope/vim-fugitive'

NeoBundle 'rstacruz/sparkup', {'rtp': 'vim/'}

" improved c-highlighting
NeoBundle 'https://github.com/justinmk/vim-syntax-extra'

" usual suspects
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'bling/vim-airline'
NeoBundle 'thinca/vim-quickrun'
NeoBundle 'sheerun/vim-polyglot'

" vim-go
NeoBundle 'fatih/vim-go'

" Syntax checker
NeoBundle 'scrooloose/syntastic'
NeoBundle 'walm/jshint.vim'

" Snippets
NeoBundle 'honza/vim-snippets'
NeoBundle 'SirVer/ultisnips'

" vim-scripts repos
NeoBundle 'rails.vim'
NeoBundle 'pangloss/vim-javascript'

call neobundle#end()
NeoBundleCheck

" Snippets bindings
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-l>"
let g:UltiSnipsJumpBackwardTrigger="<c-h>"

" Prevent conflicts between ultisnips & ycm
let g:ycm_key_list_select_completion=[]
let g:ycm_key_list_previous_completion=[]
let g:ycm_min_num_of_chars_for_completion = 2

" Ignore Angular type proprietary attributes
let g:syntastic_html_tidy_ignore_errors=[" proprietary attribute \"ng-"]
let g:syntastic_javascript_checkers = ['jshint']

" Highlight trailing whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()



syntax on
filetype plugin indent on

map ; :
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
map <Leader>n :NERDTreeToggle<CR>

set smartindent 
set tabstop=2
set shiftwidth=2
set expandtab
set number
set laststatus=2
set ttimeoutlen=2

set autoindent
set si
set hls
set lbr
set mouse=a
" split vertical screen for editting
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsSnippetsDir="~/.vim/UltiSnips/"
