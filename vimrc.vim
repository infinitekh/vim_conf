call plug#begin('~/.vim/plugged')

" 설치
"
"
"

"Plug 'ycm-core/YouCompleteMe'

" qmll vim
Plug 'peterhoeg/vim-qml'


" omni
Plug 'vim-scripts/OmniCppComplete'
Plug 'vim-scripts/Qt.vim'
let g:clang_library_path='/usr/lib/llvm-14/lib/libclang-14.so.1'
"ctag cscope 보다 쉽고 쉽다. 
"
Plug 'WolfgangMehner/latex-support'

" orgmode
Plug 'jceb/vim-orgmode'


"neosnipeet
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
"imap <expr><TAB>
" \ pumvisible() ? "\<C-n>" :
" \ neosnippet#expandable_or_jumpable() ?
" \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" For conceal markers.
"if has('conceal')
"set conceallevel=2 concealcursor=niv
"endif

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators

Plug 'jpalardy/vim-slime' " vim send message to terminal
"
Plug 'preservim/nerdtree' " nerdtree
Plug 'vim-syntastic/syntastic' " syntastic
"color scheme
Plug 'tomasr/molokai'
Plug 'flazz/vim-colorschemes'
Plug 'itchyny/lightline.vim'

" Plugin auto completion

" C

Plug 'ronakg/quickr-cscope.vim'
Plug 'majutsushi/tagbar'
" git
Plug 'tpope/vim-fugitive' " git log  airline
Plug 'airblade/vim-gitgutter' " view code change 
"
Plug 'ujihisa/unite-colorscheme'
Plug 'unblevable/quick-scope' 
" You can specify revision/branch/tag.
Plug 'kalafut/vim-taskjuggler'
"
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
"  vim fzf settings
" Mapping selecting mappings
nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)
		
" Insert mode completion
imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-l> <plug>(fzf-complete-line)

Plug 'honza/vim-snippets'

" vimman
Plug 'vim-utils/vim-man'
" vim complete
Plug 'infinitekh/VimCompletesMe_targetvim9'
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'thomasfaingnaert/vim-lsp-snippets'
Plug 'thomasfaingnaert/vim-lsp-neosnippet'

autocmd User lsp_setup call lsp#register_server({
            \ 'name': 'clangd',
            \ 'cmd': {server_info->['clangd']},
            \ 'whitelist': ['c', 'cpp', 'objc', 'objcpp', 'cc'],
            \ 'config': { 'snippets': 0 }
            \ })



Plug 'tpope/vim-surround'
Plug 'infinitekh/HOMM3_ERM.vim'

Plug 'ctrlpvim/ctrlp.vim' " file search
""Plug 'https://bitbucket.org/kovisoft/slimv'

" User add package
"Plug 'gabrielelana/vim-markdown'
Plug 'shime/vim-livedown'
"Plug 'jaxbot/browserlink.vim'
" pretty status bar 
Plug 'vim-airline/vim-airline'
"python tool
Plug 'davidhalter/jedi-vim'
Plug 'tell-k/vim-autopep8'

"IM control
autocmd FileType python set omnifunc=python3complete#Complete


let g:syntastic_python_checkers = [ 'pep8' ]
"let g:syntastic_python_checkers = [ 'flake8' ]
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

syntax on



"latex
"
Plug 'lervag/vimtex'
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'


" HTML CSS Javascript
Plug 'mattn/emmet-vim'
" pretty view
Plug 'junegunn/vim-easy-align'
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

Plug 'godlygeek/tabular'
" Gtrans
Plug 'haya14busa/vim-gtrans'
Plug 'WolfgangMehner/vim-plugins'


" GLSL 
Plug 'tikhomirov/vim-glsl'

" 벽돌깨기 
Plug 'johngrib/vim-game-code-break'
call plug#end()


"call plug#end()
" 설정
"

filetype plugin indent on     " required!
filetype indent on
syntax on


scripte utf-8




" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
"End PlugScripts-------------------------


set nocompatible    " Vim 디폴트 기능들을 사용함
set backspace=2     " 삽입 모드에서 백스페이스를 계속 허용
set autoindent      " 자동 들여쓰기
set cindent         " c언어 자동 들여쓰기
set smartindent     " 자동 들여쓰기
"set textwidth=76    " 76번째 칸을 넘어가면 자동으로 줄 바꿈
set nowrapscan      " 찾기에서 파일의 맨 끝에 이르면 계속하여 찾지 않음
"set nobackup       " 백업파일을 만들지 않음
"set novisualbell    " 비주얼벨 기능을 사용하지 않음
set nojoinspaces    " J 명령어로 줄을 붙일 때 마침표 뒤에 한칸만 띔
set ruler           " 상태 표시줄에 커서 위치를 표시
set tabstop=2       " 탭간격
set shiftwidth=2    " 자동 들여쓰기 간격
set showcmd         " (부분적인) 명령어를 상태라인에 보여줌
set showmatch       " 매치도는 괄호의 반대쪽을 보여줌
"set ignorecase      " 찾기에서 대/소문자를 구별하지 않음
set incsearch       " 점진적으로 찾기
set autowrite       " :next나 :make같은 명령을 입력하면 자동으로 저장
set title           " 타이틀바에 현재 편집중인 파일을 표시
set nu              " 라인번호
syntax on           " 문법 강조기능
set fenc=utf-8
set fencs=utf-8,cp949,cp932,euc-jp,shift-jis,big5,latin1,ucs-2le


map <F10>  :sp tags<CR>:%s/^\([^	:]*:\)\=\([^	]*\).*/syntax keyword Tag \2/<CR>:wq! tags.vim<CR>/^<CR><F12>
map <F12>  :so tags.vim<CR>
"=============================================
set csprg=/usr/bin/cscope
set csto=0
set cst
set nocsverb

if filereadable("./cscope.out")
cs add cscope.out
"else 
"	cs add /usr/src/linux/cscope.out
endif
set csverb
"==============================================


function! ResCur()
if line("'\"") <= line("$")
normal! g`"
return 1
endif
endfunction

set viminfo='10,\"100,:20,%,n~/.viminfo




augroup resCur
autocmd!
if has("folding")
autocmd BufWinEnter * if ResCur() | call UnfoldCur() | endif
else
autocmd BufWinEnter * call ResCur()
endif
augroup END
if has("folding")
function! UnfoldCur()
if !&foldenable
return
endif
let cl = line(".")
if cl <= 1
return
endif
let cf  = foldlevel(cl)
let uf  = foldlevel(cl - 1)
let min = (cf > uf ? uf : cf)
if min
execute "normal!" min . "zo"
return 1
endif
endfunction
endif

let g:html_indent_inctags = "html,body,head,tbody"
let g:syntastic_cpp_compiler = 'g++'
let g:syntastic_cpp_compiler_options = " -Wall " 

"let g:syntastic_cpp_no_include_search = 1
"let g:syntastic_cpp_no_default_include_dirs = 1
let g:syntastic_cpp_auto_refresh_includes = 1


let g:syntastic_c_compiler_options = " -Wall "
let g:syntastic_tex_checkers = ['lacheck', 'text/language_check']




colorscheme shine
let mysyntaxfile = "~/.vim/mysyntax.vim"
syntax on
function Rand()
return str2nr(matchstr(reltimestr(reltime()), '\v\.@<=\d+')[1:])
endfunction

" c-support    UseTool_cmake and doxygen
let g:C_UseTool_cmake    = 'yes'
let g:C_UseTool_doxygen  = 'yes'
"call mmtemplates#config#Add ( 'C', '/home/kh/.vim/plugged/c-support/c-support/templates/, 'Doxygen', 'ntd' )



" Automatically save the current session whenever vim is closed
"autocmd VimLeave * mksession! ~/.vim/shutdown_session.vim
"
"" <F7> restores that 'shutdown session'
"noremap <F7> :source ~/.vim/shutdown_session.vim<CR>
"
"" If you really want to, this next line should restore the shutdown session 
"" automatically, whenever you start vim.  (Commented out for now, in case 
"" somebody just copy/pastes this whole block)
"" 
"autocmd VimEnter source ~/.vim/shutdown_session.vim<CR>

" manually save a session with <F5>
noremap <F5> :mksession! ~/.vim/manual_session.vim<cr>

" recall the manually saved session with <F6>
noremap <F6> :source ~/.vim/manual_session.vim<cr>

"-------------------------------------------------------------------------------
" My setup
"-------------------------------------------------------------------------------
inoremap \fn <C-R>=expand("%:t:r")<CR>

"Neosnippet
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)
" SuperTab like snippets behavior.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
"imap <expr><TAB>
" \ pumvisible() ? "\<C-n>" :
" \ neosnippet#expandable_or_jumpable() ?
" \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

let g:neosnippet#enable_snipmate_compatibility = 1
let g:neosnippet#snippets_directory="/home/kh/.vim/MyNeoSnippets,/home/kh/.vim/plugged/vim-snippets/snippets/"





"" For conceal markers.
"if has('conceal')
"set conceallevel=2 concealcursor=niv
"endif



" NERD-tree toggle
map <C-o> :NERDTreeToggle<CR>
" 파일없이 vim만 틸 경우 자동으로 NERD Tree 실행.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" 디렉토리를 vim으로 여는 경우 NERD Tree 실행.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
" Recommended key-mappings.

"
" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=python3complete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags



" KH --------
colorscheme desert
inoremap \fn <C-R>=expand("%:t")<CR>
vnoremap \fn <C-R>=expand("%:t")<CR>
"put=expand('%:t')


" live down preview
" should markdown preview get shown automatically upon opening markdown buffer
let g:livedown_autorun = 0

" should the browser window pop-up upon previewing
let g:livedown_open = 1

" the port on which Livedown server will run
let g:livedown_port = 4343

" the browser to use
let g:livedown_browser = "/usr/bin/google-chrome"

" move window to tab
function MoveToPrevTab()
"there is only one window
if tabpagenr('$') == 1 && winnr('$') == 1
return
endif
"preparing new window
let l:tab_nr = tabpagenr('$')
let l:cur_buf = bufnr('%')
if tabpagenr() != 1
close!
if l:tab_nr == tabpagenr('$')
	tabprev
endif
sp
else
close!
exe "0tabnew"
endif
"opening current buffer in new window
exe "b".l:cur_buf
endfunc

function MoveToNextTab()
"there is only one window
if tabpagenr('$') == 1 && winnr('$') == 1
return
endif
"preparing new window
let l:tab_nr = tabpagenr('$')
let l:cur_buf = bufnr('%')
if tabpagenr() < tab_nr
close!
if l:tab_nr == tabpagenr('$')
	tabnext
endif
sp
else
close!
tabnew
endif
"opening current buffer in new window
exe "b".l:cur_buf
endfunc

nnoremap <A-.> :call MoveToNextTab()<CR>
nnoremap <A-,> :call MoveToPrevTab()<CR>

let g:livepreview_previewer = 'okular'
let g:Latex_PdfViewer ="okular"
let g:slime_target = "screen"
let g:slime_paste_file = tempname()
let g:slime_python_ipython =1


"abbr 
iabbr __email ekh0324@gmail.com
iabbr <expr> __time strftime("%Y-%m-%d %H:%M:%S")
iabbr <expr> __file expand('%:p')
iabbr <expr> __name expand('%')
iabbr <expr> __pwd expand('%:p:h')
iabbr <expr> __branch system("git rev-parse --abbrev-ref HEAD")
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" cscope
function! LoadCscope() 
	let db = findfile("cscope.out", ".;") 
	if (!empty(db)) 
		let path = strpart(db, 0, match(db, "/cscope.out$")) 
		set nocscopeverbose " suppress 'duplicate connection' error 
		exe "cs add " . db . " " . path 
		set cscopeverbose 
		" else add the database pointed to by environment variable 
	elseif $CSCOPE_DB != "" 
		cs add $CSCOPE_DB 
	endif 
endfunction 
au BufEnter /* call LoadCscope()



let g:Templates_UsePersonalizationFile = 'yes'



let mapleader = '\'
let maplocalleader = '\'
set nocompatible
if has('python') " if dynamic py|py3, this line already activates python2.
  let s:python_version = 2
elseif has('python3')
  let s:python_version = 3
else
  let s:python_version = 0
endif
echomsg 'Using python'.s:python_version


"jedi-vim setup
let g:jedi#auto_initialization = 1

let g:jedi#goto_command = "<leader>d"
let g:jedi#goto_assignments_command = "<leader>g"
let g:jedi#goto_stubs_command = "<leader>s"
let g:jedi#goto_definitions_command = ""
let g:jedi#documentation_command = "K"
let g:jedi#usages_command = "<leader>n"
let g:jedi#completions_command = "<leader><Space>"
let g:jedi#rename_command = "<leader>r"
let g:jedi#environment_path = "/usr/bin/python3"

"omnicpp

let OmniCpp_DefaultNamespaces = ["std", "kh"]
map <S-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>



vmap <C-c> "+y
vmap <C-x> "+d
vmap <C-S-v> "*<Esc>"+p
imap <C-S-v> <Esc>"+pi

packadd lsp
let lspServers = [
			\     #{
			\        filetype: ['c', 'cpp'],
			\        path: '/usr/bin/clangd',
			\        args: ['--background-index']
			\      },
			\     #{
			\	 filetype: ['javascript', 'typescript'],
			\	 path: '/usr/local/bin/typescript-language-server',
			\	 args: ['--stdio']
			\      },
			\     #{
			\	 filetype: 'sh',
			\	 path: '/usr/local/bin/bash-language-server',
			\	 args: ['start']
			\      },
			\     #{
			\	 filetype: 'vim',
			\	 path: '/usr/local/bin/vim-language-server',
			\	 args: ['--stdio']
			\      },
			\     #{
			\	 filetype: ['go', 'gomod'],
			\	 path: '/usr/bin/gopls',
			\	 args: ['serve'],
			\        syncInit: v:true
			\      },
			\     #{
			\	 filetype: ['rust'],
			\	 path: '/home/kh/.local/bin/rust-analyzer',
			\	 args: [],
		\        syncInit: v:true
			\      },
			\     #{
			\	 filetype: ['python'],
			\	 path: '/usr/bin/pyls',
			\	 args: []
			\      }
			\   ]
call LspAddServer(lspServers)


" https://github.com/lilydjwg/fcitx.vim

packadd fcitx
let g:fcitx5_remote = '/usr/bin/fcitx5-remote'
set ttimeoutlen=100


