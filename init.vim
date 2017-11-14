" A minimal vimrc for new vim users to start with.
"
" Referenced here: http://vimuniversity.com/samples/your-first-vimrc-should-be-nearly-empty
"
" Original Author:	     Bram Moolenaar <Bram@vim.org>
" Made more minimal by:  Ben Orenstein
" Modified by :          Ben McCormick
" Last change:	         2014 June 8
"
" To use it, copy it to
"  for Unix based systems (including OSX and Linux):  ~/.vimrc
"  for Windows :  $VIM\_vimrc
"
"  If you don't understand a setting in here, just type ':h setting'.

" auto-install vim-plug                                                                                                                
if empty(glob('~/.config/nvim/autoload/plug.vim'))                                                                                    
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim                                                              autocmd VimEnter * PlugInstall                                                                                                      
endif                                                                                                                                 

call plug#begin('~/.config/nvim/plugged')

" Install plugins
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'fatih/vim-go'
Plug 'hzchirs/vim-material'
Plug 'Valloric/YouCompleteMe'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-surround'

call plug#end()

" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" Make backspace behave in a sane manner.
set backspace=indent,eol,start

" Switch syntax highlighting on
syntax on

" Ativate true colors in iterm2
set termguicolors

" Enable file type detection and do language-dependent indenting.
filetype plugin indent on

" Show relative line numbers
set number
set relativenumber

:set tabstop=4
:set shiftwidth=4
:set expandtab

" Allow hidden buffers, don't limit to 1 file per window/split
set hidden

" Color Scheme specific
colorscheme vim-material

set background=dark

" Initiate NERDTree with VIM
autocmd VimEnter * NERDTree

" Close Vim if only window open is NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" set keybinds for changing between vim windows
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

" set keybinds to resize windows

au! WinEnter * call SetWinAdjust()

fun! SetWinAdjust()
   if winnr() == winnr('$')
      nmap <C-w>> :vertical resize -25<CR>
      nmap <C-w>< :vertical resize +25<CR>
   else
      nmap <C-w>> :vertical resize +25<CR>
      nmap <C-w>< :vertical resize -25<CR>
   endif
endfun

"set cursorline
"hi CursorLine   cterm=NONE ctermbg=237;

if has("persistent_undo")
    set undodir=~/.undodir/
    set undofile
endif

" Unbind the cursor keys in insert, normal and visual modes.
for prefix in ['i', 'n', 'v']
    for key in ['<Up>', '<Down>', '<Left>', '<Right>']
        exe prefix . "noremap " . key . " <Nop>"
    endfor
endfor

" Hide NERDTree scrollbar
:set guioptions-=L

nmap <C-n> :NERDTreeToggle <CR>

" Hide MacVim scrollbar
:set guioptions-=r 

let loaded_matchparen=1 " Don't load matchit.vim (paren/bracket matching)
set noshowmatch         " Don't match parentheses/brackets
set nocursorline        " Don't paint cursor line
set nocursorcolumn      " Don't paint cursor column
set lazyredraw          " Wait to redraw
set scrolljump=8        " Scroll 8 lines at a time at bottom/top
let html_no_rendering=1 " Don't render italic, bold, links in HTML

" Hopefully make clipboard work with Vim
set clipboard=unnamed

" Fix <C-h> keybind on neovim
if has('nvim')
    nmap <BS> <C-h>
endif
