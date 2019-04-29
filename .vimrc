" paste formating 
set pastetoggle=<F2>
set encoding=utf-8

execute pathogen#infect()
syntax on
filetype plugin indent on

 autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
 autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

 autocmd StdinReadPre * let s:std_in=1
 autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

 let g:NERDTreeDirArrowExpandable = '▸'
 let g:NERDTreeDirArrowCollapsible = '▾'

let g:airline_theme='simple'
let g:airline#extensions#tabline#enabled = 1

let g:airline#extensions#tabline#left_alt_sep = '|'

" monokai 
syntax on
set t_Co=256

let g:monokai_term_italic = 1
let g:monokai_gui_italic = 1


"===JavaScript ===
"-- FOLDING -- https://medium.com/vim-drops/javascript-folding-on-vim-119c70d2e872

set foldmethod=syntax "syntax highlighting items specify folds
set foldcolumn=1 "defines 1 col at window left, to indicate folding
let javaScript_fold=1 "activate folding by JS syntax
set foldlevelstart=99 "start file with all folds opened


" Latex 
filetype plugin on
set shellslash
set grepprg=grep\ -nH\ $*
filetype indent on
let g:tex_flavor='latex'

" text formating 

execute pathogen#infect()
syntax on
filetype plugin indent on
" colorscheme monokai

let g:glsl_file_extensions = '*.glsl,*.vsh,*.fsh,*.fshader,*.vshader'

set nu
set shiftwidth=4
set tabstop=4
set expandtab
set laststatus=2
set cursorline

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme="dark"

let g:jsx_ext_required = 0

let g:go_fmt_command = "goimports"
let g:go_fmt_fail_silently = 1

autocmd BufWritePre *.js call JsBeautify()
autocmd BufWritePre *.html call HtmlBeautify()
autocmd BufWritePre *.css call CSSBeautify()

au BufRead,BufNewFile *.txt,*.md set wrap linebreak nolist textwidth=80 wrapmargin=0 spell cc=80 syntax=off cursorline!

let g:nerdtree_tabs_open_on_console_startup = 1

" from http://nik.works/blog/vim01302016/ 
" syntastic 
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': [],'passive_filetypes': [] }
"nnoremap <C-w>E :SyntasticCheck<CR> :SyntasticToggleMode<CR>
:nmap <F9> :SyntasticCheck<CR> :SyntasticToggleMode<CR>
" column to 80
if exists('+colorcolumn')
  set colorcolumn=80
else
  au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
endif


" Key Mappings
" CTRL e to end of line insert mode
imap <C-e> <esc>$i<right>
imap <C-a> <esc>0i
" paste large text from clipboard not from buffer
imap <D-v> <esc>:r !pbpaste<CR> <a><CR>


" Spell check
set spelllang=en_us spell
set modeline
" change highlight color 
highlight clear SpellBad
highlight SpellBad term=standout ctermfg=1 term=underline cterm=underline ctermfg=darkred  ctermbg=yellow
highlight clear SpellCap
highlight SpellCap  term=underline cterm=underline ctermfg=blue ctermbg=red
highlight clear SpellRare
highlight SpellRare term=underline cterm=underline
highlight clear SpellLocal
highlight SpellLocal term=underline cterm=underline ctermfg=green

" spell check
autocmd BufRead,BufNewFile *.md setlocal spell
autocmd BufRead,BufNewFile *.tex setlocal spell
autocmd BufRead,BufNewFile *.txt setlocal spell

" Commenting blocks of code.
noremap <leader>/ :Commentary<cr>

" JSON FORMAT 
nmap jsf : %!python -m json.tool

" word completion 
set complete+=kspell

" Auto word wrap to 80 characters
"set textwidth=80
"set formatoptions+=t

au BufRead,BufNewFile *.tex  setlocal textwidth=80
au BufRead,BufNewFile *.md  setlocal textwidth=80
au BufRead,BufNewFile *.txt  setlocal textwidth=80

" YCM autocomplete 
let g:ycm_python_interpreter_path = ''
let g:ycm_python_sys_path = ['/System/Library/Frameworks/Python.framework/Versions/2.7/Extras/lib/python/matplotlib/__init__.pyc', '/System/Library/Frameworks/Python.framework/Versions/2.7/Extras/lib/python/numpy/__init__.pyc','/usr/local/lib/python3.7/site-packages/pandas/__init__.py', '/usr/local/lib/python3.7/site-packages/numpy/__init__.py','/usr/local/lib/python3.7/site-packages/matplotlib/__init__.py']
let g:ycm_extra_conf_vim_data = [
  \  'g:ycm_python_interpreter_path',
  \  'g:ycm_python_sys_path'
  \]
let g:ycm_global_ycm_extra_conf = '~/.vim/myconfi/global_extra_conf.py'

" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

" Always use vertical diffs
set diffopt+=vertical
