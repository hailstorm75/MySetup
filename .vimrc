execute pathogen#infect()
set encoding=utf-8
set laststatus=2
set noshowmode
syntax on

" Color scheme
color elflord

" Windows bell sound
set visualbell
set t_vb=

" Indentation
filetype plugin indent on
set number relativenumber
set expandtab ts=2 sw=2 ai
set statusline+=%#warningmsg#
set statusline+=%*
set showtabline=1

" Syntastic settings
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1

" YCM settings
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
let g:ycm_key_list_select_completion = ['<Down>']
let g:clang_library_path = '/usr/lib/llvm-3.8/lib/libclang.so.1'

" Vimtex settings
let g:vimtex_compiler_latexmk = {'callback' : 0}

" Vebugger settings
let g:vebugger_breakpoint_text='()'
let g:vebugger_currentline_text='->'

" AppCppClass_Plus settings
let g:DoxygenToolkit_authorName="Denis Akopyan"
let g:DoxygenToolkit_authorEmail="denis.akopyan@senzma.cz"

" Line numbers
autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
autocmd BufLeave,FocusLost,InsertEnter * set norelativenumber

" Trailing whitespace
match Error /\s\+$/

" Cursor line
set cursorline
hi cursorline cterm=none
hi cursorline ctermbg=235

" Key maps
map <C-n> :NERDTreeToggle<CR>
map <C-m> :TagbarToggle<CR>
map <C-s> :sp<CR>
map <C-b> :!sh ~/.vimbuilder '%:p'<CR><CR>
autocmd FileType c++ map <C-c> :AddCppClass <CR>
autocmd FileType tex map <F5> :!cp %:p:r.pdf /mnt/c/Temp && /mnt/c/Program\ Files\ \(x86\)/scripts/vimbuilderBridge.exe %:r.pdf<CR><CR>
autocmd FileType c,c++ map <F5> :VBGstartGDB %:r <CR>
autocmd FileType c,c++ map <C-F5> :VBGkill <CR>
autocmd FileType c,c++ map <F6> :VBGcontinue <CR>
autocmd FileType c,c++ map <F9> :VBGtoggleBreakpointThisLine <CR>
autocmd FileType c,c++ map <F10> :VBGstepOver <CR>
autocmd FileType c,c++ map <F11> :VBGstepIn <CR>
autocmd FileType c,c++ map <C-e> :VBGevalWordUnderCursor<CR>
map <F12> :sp <CR>:exec("tag ".expand("<cword>"))<CR>
