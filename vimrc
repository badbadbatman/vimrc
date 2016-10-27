runtime! debian.vim
if has("syntax")
  syntax on
endif
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
set ignorecase
set smartcase
set incsearch
set autowrite

set tabstop=4
set shiftwidth=4
set smarttab
set et
set ai
set cin
set showmatch 
set hlsearch
set incsearch
set ignorecase
colorscheme monokai
set nu
set list listchars=tab:❘-,trail:·,extends:»,precedes:«,nbsp:×
set langmap=йq,цw,уe,кr,еt,нy,гu,шi,щo,зp,фa,ыs,вd,аf,пg,рh,оj,лk,дl,яz,чx,сc,мv,иb,тn,ьm,ЙQ,ЦW,УE,КR,ЕT,НY,ГU,ШI,ЩO,ЗP,ФA,ЫS,ВD,АF,ПG,РH,ОJ,ЛK,ДL,ЯZ,ЧX,СC,МV,ИB,ТN,ЬM,Ж:
set t_Co=256
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

if !has('gui_running')
set mouse=
endif

function InsertTabWrapper()
    let col=col('.') - 1
endfunction

filetype plugin on
set omnifunc=syntaxcomplete#Complete
set wildmenu
set foldenable
set foldmethod=indent
