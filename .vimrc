set number
"set textwidth=78
set tabstop=2
set expandtab
set shiftwidth=2
set shiftround
set hidden
syntax on
colorscheme elflordmine
set whichwrap+=<,>,h,l,[,]
set autoindent
call pathogen#infect()
autocmd vimenter * if !argc() | NERDTree | endif


map <c-f> :call JsBeautify()<cr>
cmap w!! w !sudo tee > /dev/null %

"let g:syntastic_javascript_checkers = ['standard']

"autocmd bufwritepost *.js silent !standard % --format
"set autoread
