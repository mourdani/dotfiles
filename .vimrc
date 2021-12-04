" **************************************************************************** "
"                                                                              "
"                                                         :::      ::::::::    "
"    .vimrc                                             :+:      :+:    :+:    "
"                                                     +:+ +:+         +:+      "
"    By: mourdani <mourdani@student.42.fr>          +#+  +:+       +#+         "
"                                                 +#+#+#+#+#+   +#+            "
"    Created: 2021/12/04 18:29:20 by mourdani          #+#    #+#              "
"    Updated: 2021/12/04 18:29:22 by mourdani         ###   ########.fr        "
"                                                                              "
" **************************************************************************** "

call plug#begin('~/.vim/plugged')

Plug 'junegunn/goyo.vim'
Plug 'wakatime/vim-wakatime'
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vimwiki/vimwiki'
Plug 'supercrabtree/vim-resurrect'
Plug '42Paris/42header'
Plug 'vim-syntastic/syntastic'
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'
Plug 'tpope/vim-fugitive'
Plug 'sainnhe/gruvbox-material'
Plug 'ackyshake/VimCompletesMe'
Plug 'mhinz/vim-startify'

call plug#end()


let g:user42 = 'mourdani'
let g:mail42 = 'mourdani@student.42.fr'
set nu


let g:vcm_s_tab_mapping = "\<Tab>"


" Use deoplete.
let g:deoplete#enable_at_startup = 1

" Important - 256 colors!!
        if has('termguicolors')
          set termguicolors
        endif
        " Set contrast.
        " Available values: 'hard', 'medium'(default), 'soft'
        let g:gruvbox_material_background = 'soft'

set background=dark        
colorscheme gruvbox-material
