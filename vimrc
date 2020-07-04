" General Options
execute pathogen#infect()

syntax on
filetype plugin indent on
set nu
set tabstop=2
set shiftwidth=2
set expandtab|retab
set smarttab

" Color Scheme
" https://github.com/mhartington/oceanic-next
if (has("termguicolors"))
  set termguicolors
endif

colorscheme OceanicNext

" Syntax Highlights
au BufNewFile,BufFilePre,BufRead *.md set filetype=markdown

" Spell Checking
au BufRead,BufNewFile *.md setlocal spell " Enables spell checking for markdown files
au FileType gitcommit setlocal spell " Enables spell checking for git commits

hi clear SpellBad " Clears the current style
hi SpellBad cterm=underline,bold ctermbg=red ctermfg=white " Set spell erros styles

" Airline
" https://github.com/vim-airline/vim-airline
set laststatus=2
set t_Co=256
" https://github.com/vim-airline/vim-airline-themes
let g:airline_theme='oceanicnext'
