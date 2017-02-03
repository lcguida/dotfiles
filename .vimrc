" General Options
syntax on
set nu
set tabstop=2
set shiftwidth=2
set expandtab|retab
set smarttab

" Color Scheme
set background=dark
let base16colorspace=256
colorscheme base16-tomorrow

" Syntax Highlights
au BufNewFile,BufFilePre,BufRead *.md set filetype=markdown

" Spell Checking

au BufRead,BufNewFile *.md setlocal spell " Enables spell checking for markdown files
au FileType gitcommit setlocal spell " Enables spell checking for git commits

hi clear SpellBad " Clears the current style
hi SpellBad cterm=underline,bold ctermbg=red ctermfg=white " Set spell erros styles
