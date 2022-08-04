scripte utf-8

" ==============================================================================
" Basic Settings
" ==============================================================================
" indentation ------------------------------------------------------------------
set autoindent                  "자동 들여쓰기
set cindent                     "c언어 스타일 들여쓰기
filetype indent on
"autocmd Filetype perl setlocal noexpandtab softtabstop=4 tabstop=4 shitfwidth=4
"set expandtab                  "탭을 공백으로 변환
"set softtabstop=4              "expandtab의 크기 설정
set tabstop=4                   "탭 크기 4
set shiftwidth=4                "block <> : 탭 크기 4
set listchars=tab:→\ ,eol:↲     "tab, eol : 문자변경
"set list                       "공백을 표시한다.
" ------------------------------------------------------------------------------

" encoding ---------------------------------------------------------------------
set enc=utf-8 nobomb            "내부인코딩(읽기)
set fencs=ucs-bom,utf8,cp949    "파일인코딩(저장)
set tenc=utf-8                  "터미널인코딩(편집)
" set langmenu=en_US
" let $LANG='en_US'
" ------------------------------------------------------------------------------

" search -----------------------------------------------------------------------
set hlsearch                    "검색어 강조
set ignorecase                  "검색시 대소문자 무시
set incsearch                   "키워드 입력시 점진적 검색
" set nowrapscan                "맨끝에 이르면 검색어 찾지 않음
" ------------------------------------------------------------------------------

" ui ---------------------------------------------------------------------------
set laststatus=2                "상태창 항상 표시
set statusline=%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P
set ruler                       "상태창에 커서위치 표시
set wrap                        "코드 짤림방지용으로 줄바꿈 사용
" set nowrap
set wildmenu                    "탭으로 wildmenu 호출
set cursorline                  "커서라인 설정
set number                      "줄번호 표시
"set relativenumber             "상대적인 줄번호 표시
set noerrorbells                "오류시 경고음 비활성화
set visualbell                  "오류시 화면을 깜빡인다.
"set mouse=a                    "빔에서 마우스 사용
set title                       "타이틀바에 파일이름표시
set showcmd                     "미완성 명령어 표시 ex) "d"w, "c"w,...
set nocompatible                "호환성을 없애고 vim 기능 사용
set t_Co=256                    "256 컬러
set term=xterm-256color         "256 컬러
"set clipboard=unamed	        "클립보드 공유(윈도우용)
set clipboard=unnamedplus	    "클립모드 공유(리눅스)
" ------------------------------------------------------------------------------

" syntax -----------------------------------------------------------------------
syntax on                       "자동문법 강조
syntax enable                   "문법검사 실시
set background=dark             "어두운 배경에 적합한 색상 사용
highlight Comment term=bold cterm=bold ctermfg=4    "주석색조정
filetype on                     "파일종류 자동인식
set showmatch                   "매치되는 괄호 색표시
" ------------------------------------------------------------------------------

" save -------------------------------------------------------------------------
set nobackup                    "백업파일 안만듬
set noswapfile                  "스왑파일 안만듬
" ------------------------------------------------------------------------------

" etc --------------------------------------------------------------------------
set lazyredraw                  "스크립트 실행중 화면 업데이트 안함
set backspace=eol,start,indent  "백스페이스가 지울수 있는것 설정(줄바꿈,삽입시작,들여쓰기)
set confirm                     "저장되지 않은 파일 닫을때 확인
set history=1000                "기록저장갯수
set path+=**                    "검색을 하위디렉토리까지 포함
" ------------------------------------------------------------------------------
" ==============================================================================


" ==============================================================================
" switch Korean
" ==============================================================================
" set langmap=ㅁa,ㅠb,ㅊc,ㅇd,ㄷe,ㄹf,ㅎg,ㅗh,ㅑi,ㅓj,ㅏk,ㅣl,ㅡm,ㅜn,ㅐo,ㅔp,ㅂq,ㄱr,ㄴs,ㅅt,ㅕu,ㅍv,ㅈw,ㅌx,ㅛy,ㅋz

inoremap <ESC> <ESC>:set imdisable<CR>
nnoremap i :set noimd<CR>i
nnoremap I :set noimd<CR>I
nnoremap a :set noimd<CR>a
nnoremap A :set noimd<CR>A
nnoremap o :set noimd<CR>o
nnoremap O :set noimd<CR>O
" ==============================================================================


" ==============================================================================
" Key Settings
" ==============================================================================
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>

let mapleader=","
""" bp / bn
nnoremap <leader>q      :bp<CR>
nnoremap <leader>w      :bn<CR>
" ==============================================================================


" ==============================================================================
" toggle LineNumber
" ==============================================================================
noremap <Leader>nu :set nu!<CR>
noremap <Leader>rn :set rnu!<CR>
" ==============================================================================


" ==============================================================================
" KeySettings resizeWindows
" ==============================================================================
nnoremap <silent> <Leader>= :exe "resize +3"<CR>
nnoremap <silent> <Leader>- :exe "resize -3"<CR>
nnoremap <silent> <Leader>] :exe "vertical resize +8"<CR>
nnoremap <silent> <Leader>[ :exe "vertical resize -8"<CR>

nnoremap <silent> <Leader>+ :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> <Leader>_ :exe "resize " . (winheight(0) * 2/3)<CR>
nnoremap <silent> <Leader>} :exe "vertical resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> <Leader>{ :exe "vertical resize " . (winheight(0) * 2/3)<CR>

"nnoremap <Leader>rc        :rightbelow vnew $MYVIMRC<CR>
nnoremap <Leader>rc         :vnew $MYVIMRC<CR>

" noremap <C-h> <C-w>h
" noremap <C-j> <C-w>j
" noremap <C-k> <C-w>k
" noremap <C-l> <C-w>l

nnoremap <C-S-t>        :enew<Enter>
nnoremap <C-F5>         :bp<CR>
nnoremap <C-F6>         :bn<CR>
nnoremap <C-F4>         :bp <BAR>   bd #<Enter>
" ==============================================================================


" ==============================================================================
" vundleVim
" ==============================================================================
" filetype off                    "required
"set the runtime path to include Vundle and initialize
" set runtimepath+=~/.vim/bundle/Vundle.vim
" call vundle#begin('~/.vim/bundle')

" Plugin 'VundleVim/Vundle.vim'
" Plugin 'sickill/vim-monokai'
" Plugin 'nanotech/jellybeans.vim'
" Plugin 'vim-airline/vim-airline'
" Plugin 'vim-airline/vim-airline-themes'
" Plugin 'scrooloose/nerdtree'
" Plugin 'scrooloose/nerdcommenter'
" Plugin 'majutsushi/tagbar'
" Plugin 'blueyed/vim-diminactive'
" Plugin 'nathanaelkane/vim-indent-guides'
" Plugin 'airblade/vim-gitgutter' " vim with git status(added, modified, and removed lines)
" Plugin 'tpope/vim-fugitive' " vim with git command(e.g., Gdiff)
" Plugin 'christoomey/vim-tmux-navigator'
" Plugin 'benmills/vimux'
" Plugin 'junegunn/fzf.vim'

" call vundle#end()               "required
" filetype plugin indent on       "required
" ------------------------------------------------------------------------------
" Brief help
" ------------------------------------------------------------------------------
":PluginList        - lists configured plugins
":PluginInstall     - installs plugins; append  `!` to update or just
":PluginUpdate
":PluginSearch foo  - searches for foo; append  `!` to refresh local cache
":PluginClean       - confirms removal of unused plugins;   append  `!` to
"auto-approve remove
" ------------------------------------------------------------------------------
" ==============================================================================


" ==============================================================================
" vimPlug
" ==============================================================================
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/syntastic'             " checking syntax
Plug 'sickill/vim-monokai'              " colorscheme
Plug 'sjl/badwolf'                      " colorscheme
Plug 'nanotech/jellybeans.vim'          " colorscheme
Plug 'vim-airline/vim-airline'          " status bar / tab
Plug 'vim-airline/vim-airline-themes'   " airline-theme
Plug 'scrooloose/nerdtree'              " explorer
Plug 'scrooloose/nerdcommenter'         " commenter
Plug 'majutsushi/tagbar'                " tarbar
Plug 'blueyed/vim-diminactive'          " display active pannel
Plug 'nathanaelkane/vim-indent-guides'  " indent-guides
Plug 'airblade/vim-gitgutter'           " vim with git status(added, modified, and removed lines)
Plug 'tpope/vim-fugitive'               " vim with git command(e.g., Gdiff)
Plug 'christoomey/vim-tmux-navigator'   " ctrl movement
" Plug 'benmills/vimux'                 " vi-prompt
Plug 'tpope/vim-surround'               " ds'(delete surround ')
Plug 'tpope/vim-commentary'             " gcl, gcj, gcip(go commentary inner paragraph)
Plug 'vim-scripts/ReplaceWithRegister'  " griw(go replace inner word)
Plug 'christoomey/vim-titlecase'        " gti'(go titlecase inner ')
Plug 'christoomey/vim-sort-motion'      " gsip(go sort inner paragraph)
Plug 'christoomey/vim-system-copy'      " cpi'(copy inner')         apt install xsel
Plug 'michaeljsmith/vim-indent-object'  " gcii(go commentary inner indent)      gcai(go commentary all indent)
" Plug 'kana/vim-textobj-entire'        " gcae(go commentary all entire)
" Plug 'kana/vim-textobj-line'          " cil(change inner line)
Plug 'kien/ctrlp.vim'                   " like fzf
Plug 'junegunn/fzf.vim'                 " fzf

call plug#end()
" ------------------------------------------------------------------------------
" Brief help
" ------------------------------------------------------------------------------
":source %
":PlugInstall   # install pluigins
":PlugUpdate    # install / update pluigins
":PlugClean     # remove plugins
":PlugUpgrade   # upgrade vim-plug
":PlugStatus    # plugins status
" ------------------------------------------------------------------------------
" ==============================================================================


" ==============================================================================
" colorscheme
" ==============================================================================
" colorscheme blue
" colorscheme koehler
" colorscheme monokai
" colorscheme jellybeans
colorscheme badwolf
" ==============================================================================


" ==============================================================================
" vim-colors-solarized
" ==============================================================================
" syntax enable
" colorscheme solarized
" if has('gui_running')
"     set background=light
" else
"     set background=dark
" endif
" ==============================================================================


" ==============================================================================
" syntastic
" ==============================================================================
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" ==============================================================================


" ==============================================================================
" airline
" ==============================================================================
set t_Co=256
set laststatus=2                                            " turn on bottom bar
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1                " tun on buffer-list
let g:airline#extensions#tabline#fnamemod = ':t'            " only filename in buffer list
let g:airline#extensions#tabline#buffer_nr_show = 1         " show buffer-number
let g:airline#extensions#tabline#buffer_nr_format = '%s:'   " buffer-number format	ex) '%04d'
" let g:airline#extensions#tabline#formatter = 'unique_tail'
" let g:airline_theme='hybrid'

nnoremap <C-S-t> :enew<Enter>         " 새로운 버퍼를 연다
" nnoremap <C-F5> :bprevious!<Enter>    " 이전 버퍼로 이동
" nnoremap <C-F6> :bnext!<Enter>        " 다음 버퍼로 이동
" nnoremap <C-F4> :bp <BAR> bd #<Enter> " 현재 버퍼를 닫고 이전 버퍼로 이동
" ==============================================================================


" ==============================================================================
" NERDTree
" ==============================================================================
" autocmd BufEnter * lcd %:p:h
" autocmd VimEnter * if !argc() | NERDTree | endif
" nmap <C-F> :NERDTreeToggle<CR>
" let NERDTreeShowLineNumbers=1
" let NERDTreeShowHidden=1
"nmap <leader>ne :NERDTreeToggle<CR>
"let g:NERDTreeWinPos = "right"
"noremap <C-F>          :NERDTreeFind<CR>
"noremap <Leader>n      :NERDTreeToggle<CR>
" ==============================================================================


" ==============================================================================
" NERD Commenter
" ==============================================================================
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1
" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
" customize keymapping
map <Leader>cc <plug>NERDComToggleComment
map <Leader>c<space> <plug>NERDComComment
" ==============================================================================


" ==============================================================================
" for taglist
" ==============================================================================
nmap <F8> :TagbarToggle<CR>
" ==============================================================================


" ==============================================================================
" for indent guide
" ==============================================================================
let g:indentguides_spacechar = '┆'
let g:indentguides_tabchar = '|'
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1
" set ts=2 sw=2 et
" ==============================================================================


" ==============================================================================
" for blueyed/vim-diminactive
" ==============================================================================
let g:diminactive_enable_focus = 1
" ==============================================================================


" ==============================================================================
" vim-tmux-navigator
" ==============================================================================
let g:tmux_navigator_no_mappings = 1

nnoremap <silent> <c-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <c-j> :TmuxNavigateDown<cr>
nnoremap <silent> <c-k> :TmuxNavigateUp<cr>
nnoremap <silent> <c-l> :TmuxNavigateRight<cr>
"~ nnoremap <silent> {Previous-Mapping} :TmuxNavigatePrevious<cr>

" Write all buffers before navigating from Vim to tmux pane
let g:tmux_navigator_save_on_switch = 2

" Disable tmux navigator when zooming the Vim pane
let g:tmux_navigator_disable_when_zoomed = 1

" vv to generate new vertical split
nnoremap <silent> vv <C-w>v
" ==============================================================================


" ==============================================================================
" vimux
" ==============================================================================
" Prompt for a ommand to run
" map <Leader>vp :VimuxPromptCommand<CR>

" Run last command executed by VimuxRunCommand
" map <Leader>vl :VimuxRunLastCommand<CR>

" Inspect runner pane
" map <Leader>vi :VimuxInspectRunner<CR>

" Zoom the tmux runner pane
" map <Leader>vz :VimuxZoomRunner<CR>
" ==============================================================================


" ==============================================================================
" ctrlp
" ==============================================================================
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
" let g:ctrlp_user_command = 'find %s -type f'        " MacOSX/Linux
" let g:ctrlp_user_command = 'dir %s /-n /b /s /a-d'  " Windows
" ==============================================================================


" ==============================================================================
" ranger
" ==============================================================================
" https://codeyarns.com/tech/2014-09-18-how-to-use-ranger-as-file-explorer-for-vim.html
" https://github.com/ranger/ranger/blob/master/examples/vim_file_chooser.vim
"
" Compatible with ranger 1.4.2 through 1.7.*
"
" Add ranger as a file chooser in vim
"
" If you add this code to the .vimrc, ranger can be started using the command
" ":RangerChooser" or the keybinding "<leader>r".  Once you select one or more
" files, press enter and ranger will quit again and vim will open the selected
" files.

function! RangeChooser()
    let temp = tempname()
    " The option "--choosefiles" was added in ranger 1.5.1. Use the next line
    " with ranger 1.4.2 through 1.5.0 instead.
    "exec 'silent !ranger --choosefile=' . shellescape(temp)
    if has("gui_running")
        exec 'silent !xterm -e ranger --choosefiles=' . shellescape(temp)
    else
        exec 'silent !ranger --choosefiles=' . shellescape(temp)
    endif
    if !filereadable(temp)
        redraw!
        " Nothing to read.
        return
    endif
    let names = readfile(temp)
    if empty(names)
        redraw!
        " Nothing to open.
        return
    endif
    " Edit the first item.
    exec 'edit ' . fnameescape(names[0])
    " Add any remaning items to the arg list/buffer list.
    for name in names[1:]
        exec 'argadd ' . fnameescape(name)
    endfor
    redraw!
endfunction
command! -bar RangerChooser call RangeChooser()
nnoremap <leader>r :<C-U>RangerChooser<CR>
" ==============================================================================
"