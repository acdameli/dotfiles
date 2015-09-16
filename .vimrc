set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
Plugin 'L9'

Plugin 'phpfolding.vim' " folding for php files
Plugin 'cleanphp' " syntax highlighting
Plugin 'php.vim-for-php5' " php5 syntax file
Plugin 'joonty/vim-phpqa' " highlight syntax errors in vim files
Plugin 'shawncplus/phpcomplete.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
syntax on

" configure options for phpcomplete.vim
" https://github.com/shawncplus/phpcomplete.vim#options
let g:phpcomplete_complete_for_unknown_classes = 1
let g:phpcomplete_parse_docblock_comments = 1
let g:phpcomplete_cache_taglists = 1
let g:phpcomplete_enhance_jump_to_definition = 1

" configure php folding
map <F5> <Esc>:EnableFastPHPFolds<Cr>
map <F6> <Esc>:EnablePHPFolds<Cr>
map <F7> <Esc>:DisablePHPFolds<Cr>

set expandtab ts=4 sw=4 nopaste number nowrap smartindent autoindent
au BufRead *.php EnableFastPHPFolds
au BufEnter *.php set expandtab ts=4 sw=4 nopaste number nowrap smartindent autoindent
au BufEnter *.yml set expandtab ts=2 sw=2 nopaste number nowrap smartindent autoindent
au BufEnter *.js set expandtab ts=4 sw=4 nopaste number nowrap smartindent autoindent
