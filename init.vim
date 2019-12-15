"vim-plug - needs installation first
call plug#begin('~/.local/share/nvim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'machakann/vim-highlightedyank'
Plug 'morhetz/gruvbox'
Plug 'airblade/vim-gitgutter'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' } "see deoplete github for dependencies needed to install
Plug 'Shougo/neoinclude.vim'
Plug 'Shougo/deoplete-clangx'
Plug 'deoplete-plugins/deoplete-jedi'
Plug 'tell-k/vim-autopep8'
Plug 'dense-analysis/ale'

call plug#end()

"deoplete
let g:deoplete#enable_at_startup = 1
autocmd InsertLeave * silent! pclose!
"let g:clang_library_path = '/usr/lib/x86_64-linux-gnu' "dont know if this is needed, seems to be working without it?

"ale
let g:ale_c_clang_options = '-Wall -pedantic -std=c11'
let g:ale_cpp_clang_options = '-Wall -pedantic -std=c++17'
let g:ale_c_gcc_options = '-Wall -pedantic -std=c11'
let g:ale_cpp_gcc_options = '-Wall -pedantic -std=c++17'

"theme
colorscheme gruvbox
set background=dark

"autopep8
autocmd FileType python noremap <buffer> <F8> :call Autopep8()<CR>

"vanilla nvim
set number
set relativenumber
set updatetime=250 "gitgutter update
set noshowmode
set expandtab
set autoindent
set smartindent
set shiftwidth=4
syntax on
filetype plugin on

