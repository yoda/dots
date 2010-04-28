if has("terminfo")
    set t_Co=16
    set t_AB=[%?%p1%{8}%<%t%p1%{40}%+%e%p1%{92}%+%;%dm
    set t_AF=[%?%p1%{8}%<%t%p1%{30}%+%e%p1%{82}%+%;%dm
else
    set t_Co=16
    set t_Sf=[3%dm
    set t_Sb=[4%dm
endif
set backspace=2
set background=dark
set number
set ts=4 sts=4 sw=4 expandtab
colorscheme oceandeep
syntax on
set nocp
filetype plugin on
filetype indent on
set guifont=DejaVu\ Sans\ Mono:h20
