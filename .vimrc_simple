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
"set clipboard=unnamedplus	    "클립모드 공유(리눅스)
" ------------------------------------------------------------------------------

" syntax -----------------------------------------------------------------------
syntax on                       "자동문법 강조
syntax enable                   "문법검사 실시
set background=dark             "어두운 배경에 적합한 색상 사용
highlight Comment term=bold cterm=bold ctermfg=4	"주석색조정
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