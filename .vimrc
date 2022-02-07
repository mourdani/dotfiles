" **************************************************************************** "
"                                                                              "
"                                                         :::      ::::::::    "
"    .vimrc                                             :+:      :+:    :+:    "
"                                                     +:+ +:+         +:+      "
"    By: mourdani <mourdani@student.42.fr>          +#+  +:+       +#+         "
"                                                 +#+#+#+#+#+   +#+            "
"    Created: 2021/12/04 18:29:20 by mourdani          #+#    #+#              "
"    Updated: 2022/02/07 01:59:31 by mourdani         ###   ########.fr        "
"                                                                              "
" **************************************************************************** "

" Sections:
"    -> General
"    -> VIM user interface
"    -> Colors and Fonts
"    -> Files and backups
"    -> Text, tab and indent related
"    -> Visual mode related
"    -> Moving around, tabs and buffers
"    -> Status line
"    -> Editing mappings
"    -> vimgrep searching and cope displaying
"    -> Spell checking
"    -> Misc
"    -> Helper functions

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Editing mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set leader to ,
let mapleader=","
let g:mapleader=","

" VimSpector mappings
let g:vimspector_enable_mappings = 'HUNAN'
nmap <leader>da :call vimspector#Launch()<CR>
nmap <leader>dx :call vimspector#Reset()<CR>
nmap <leader>de :call vimspectorEval<CR>
nmap <leader>dw :call vimspectorWatch<CR>
nmap <leader>do :call vimspectorShowOutput<CR>

" FZF mappings
nnoremap <silent> <C-t> :Files<CR>
nnoremap <silent> <C-f> :Rg<CR>

" Git mappings
nnoremap <silent> <C-g>sh :Commits<CR>
nnoremap <silent> <C-g>a :G add .<CR>
nnoremap <silent> <C-g>c :G commit<CR>
nnoremap <silent> <C-g>p :G push<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')
" Autocompletion Plugin
Plug 'ackyshake/VimCompletesMe'
let g:vcm_s_tab_mapping = "\<Tab>"

" Theme Plugins
Plug 'vimwiki/vimwiki'
Plug 'junegunn/goyo.vim'
Plug 'vim-airline/vim-airline'
Plug 'mhinz/vim-startify'
Plug '42Paris/42header'
Plug 'sainnhe/gruvbox-material'

" Fuzzy find plugins
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'

" Git plugins
Plug 'wakatime/vim-wakatime'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-fugitive'

" Debugger plugins
Plug 'puremourning/vimspector'
Plug 'szw/vim-maximizer'
Plug 'vim-syntastic/syntastic'
let g:vimspector_enable_mappings = 'HUMAN'

call plug#end()


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Theme config
set background=dark        
colorscheme gruvbox-material

" highlight current line
au WinLeave * set nocursorline
au WinEnter * set cursorline
set cursorline

" Sets lines number
set nu

" split below and right instead of above and left by default
set splitbelow splitright 

" Set to auto read when a file is changed from the outside
set autoread
au FocusGained,BufEnter * checktime

" Always show current position
set ruler

" 42 header config 
let g:user42 = 'mourdani'
let g:mail42 = 'mourdani@student.42.fr'



" 256 colors
        if has('termguicolors')
          set termguicolors
        endif
        " Set contrast.
        " Available values: 'hard', 'medium'(default), 'soft'
        let g:gruvbox_material_background = 'soft'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git etc. anyway...
set nobackup
set nowb
set noswapfile

" This makes vim act like all other editors, buffers can
" exist in the background without being in a window.
set hidden

" Keep undo history across sessions, by storing in file.
if has('persistent_undo') && isdirectory(expand('~').'/.vim/backups')
  silent !mkdir ~/.vim/backups > /dev/null 2>&1
  set undodir=~/.vim/backups
  set undofile
endif
