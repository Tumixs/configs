"""""""""""""""""""""""""""""""""""""""""SETUP""""""""""""""""""""""""""""""""""
syntax on
set nocompatible
filetype plugin on
set shiftwidth=4
set tabstop=4
set expandtab
set encoding=UTF-8
set textwidth=80
set ruler
set backspace=indent,eol,start

""""""""""""""""""""""""""""EXPERIMENTAL""""""""""""""""""""""""""""""""""
" >>> PLUGINS
call plug#begin()
Plug 'ryanoasis/vim-devicons' " Developer Icons UNUSED
Plug 'drewtempelmeyer/palenight.vim'
Plug 'https://github.com/tpope/vim-commentary'
Plug 'https://github.com/preservim/tagbar', {'on': 'TagbarToggle'}
call plug#end()

" >>> PLUGINS SETTINGS
nmap <F8> :TagbarToggle<CR>
colorscheme palenight
" .................................................................................
" >>> TOGGLE COLORSCHEME
" Define the list of colorschemes
let g:colorschemes = ['palenight', 'shine', 'quiet', 'default', 'desert']
" others: desert
let g:current_colorscheme_index = 0

" Function to cycle through colorschemes
function! CycleColorscheme()
    let g:current_colorscheme_index = (g:current_colorscheme_index + 1) % len(g:colorschemes)
    execute 'colorscheme ' . g:colorschemes[g:current_colorscheme_index]
endfunction
:
" Map F7 to cycle colorschemes
nnoremap <F7> :call CycleColorscheme()<CR>
autocmd ColorScheme shine set cursorline cursorcolumn
autocmd ColorScheme quiet set cursorline cursorcolumn
autocmd ColorScheme palenight set cursorline cursorcolumn
autocmd ColorScheme default set cursorline! cursorcolumn!
autocmd ColorScheme desert set cursorline cursorcolumn
" -------------------------------------------------------------------------------------------------------


"""""""""""""""""""""""""""""""""""MSVC CUSTOMIZATION""""""""""""""""""""""""""""""""""""
set makeprg=build.bat
" set makeprg="mvwn spring-boot:run"
" nnoremap <F5> :silent! make \| vertical botright copen 50<CR>
nnoremap <F5> :silent! make \| botright copen <CR>
" set path+=C:\\Program\ Files\ (x86)\\Windows\ Kits\\10\\Include\\10.0.22621.0\\um
" set path+=C:\\Program\ Files\ (x86)\\Windows\ Kits\\10\\Include\\10.0.22621.0\\shared
" set path+=C:\\Program\ Files\ (x86)\\Windows\ Kits\\10\\Include\\10.0.22621.0\\ucrt
" set path+=..\\..\\
" set path+=C:\\Program\ Files\\Microsoft\ Visual\ Studio\\2022\\Community\\VC\\Tools\\MSVC\\14.38.33130\\ATLMFC\\include
" set path+=C:\\Program\ Files\\Microsoft\ Visual\ Studio\\2022\\Community\\VC\\Auxiliary\\VS\\include
" set path+=C:\\Program\ Files\ (x86)\\Windows\ Kits\\10\\include\\10.0.22621.0\\ucrt
" set path+=C:\\Program\ Files\ (x86)\\Windows\ Kits\\10\\include\\10.0.22621.0\\um
" set path+=C:\\Program\ Files\ (x86)\\Windows\ Kits\\10\\include\\10.0.22621.0\\shared
" set path+=C:\\Program\ Files\ (x86)\\Windows\ Kits\\10\\include\\10.0.22621.0\\winrt
" set path+=C:\\Program\ Files\ (x86)\\Windows\ Kits\\10\\include\\10.0.22621.0\\cppwinrt
" set tags+=C:\\Users\\T-Enigma\\vimfiles\\systag

"""""""""""""""""""""""""""""""""""DISABLED""""""""""""""""""""""""""""""""""""
" set cursorline
" highlight CursorLine ctermbg=white guibg=#2C2C2C
" set splitbelow
" set makeprg=nmake

" adding MSVC headers:
" set path+=C:\\Program\ Files\\Microsoft\ Visual\ Studio\\2022\\Community\\VC\\Tools\\MSVC\\14.38.33130\\include
"

"""""""""""""""""""""""""""""""""""OTHERS""""""""""""""""""""""""""""""""""""

" Autoclose quickfix window when jumping to a file from it
" augroup quickfix_autoclose
    " autocmd!
    " When leaving a quickfix/location list window (FileType qf or loclist)
    " and entering any other normal buffer
    " autocmd BufLeave * if &buftype == 'quickfix' || &buftype == 'loclist' | cclose | endif
    " Alternatively, when entering a buffer that is *not* quickfix/loclist:
    " autocmd BufEnter * if !(&buftype == 'quickfix' || &buftype == 'loclist') && bufwinnr('quickfix') != -1 | cclose | endif
" augroup END

"""""""""""""""""""""""""""""""""""JAVA""""""""""""""""""""""""""""""""
