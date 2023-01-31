call plug#begin('~/.vim/plugged')

" 설치
"
"
"sql
"Plug 'cosminadrianpopescu/vim-sql-workbench'
Plug 'vim-scripts/dbext.vim'

" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'

Plug 'peterhoeg/vim-qml'

"conceal unicode
Plug 'khzaw/vim-conceal'

" omni
Plug 'vim-scripts/OmniCppComplete'
Plug 'vim-scripts/Qt.vim'
let g:clang_library_path='/usr/lib/llvm-14/lib/libclang-14.so.1'
"ctag cscope 보다 쉽고 쉽다. 
"
"Plug 'WolfgangMehner/latex-support'
Plug 'WolfgangMehner/c-support'

" orgmode
Plug 'jceb/vim-orgmode'


"neosnipeet
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'

" SuperTab like snippets behavior.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.


" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators

Plug 'jpalardy/vim-slime' " vim send message to terminal
"
Plug 'preservim/nerdtree' " nerdtree 5Star
Plug 'scrooloose/syntastic' " syntastic
"color scheme
Plug 'tomasr/molokai'
Plug 'ujihisa/unite-colorscheme'
Plug 'flazz/vim-colorschemes'
Plug 'itchyny/lightline.vim'

" Plugin auto completion

" Cscople  를 알아야함. leader>s: 이런식의 사용인데 쓸주를 모름.
Plug 'ronakg/quickr-cscope.vim'
"
Plug 'majutsushi/tagbar'
" git
Plug 'tpope/vim-fugitive' " git log  airline
Plug 'airblade/vim-gitgutter' " view code change 
"
" high light fF tT color
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
" vim complete infinitekh
"
Plug 'infinitekh/VimCompletesMe_targetvim9'
Plug 'infinitekh/HOMM3_ERM.vim'

"<Plug> vala vim 
Plug 'vala-lang/vala.vim'
"vim9 
" 흠 \F 잘써야하는데... 
Plug 'monkoose/vim9-stargate'
"" For 1 character to search before showing hints
"noremap <leader>f <Cmd>call stargate#OKvim(1)<CR>
"" For 2 consecutive characters to search
noremap <leader>F <Cmd>call stargate#OKvim(2)<CR>
nnoremap <leader>w <Cmd>call stargate#Galaxy()<CR>
"" for the start of a word
"noremap <leader>w <Cmd>call stargate#OKvim('\<')<CR>
"" for the end of a word
"noremap <leader>e <Cmd>call stargate#OKvim('\S\>')<CR>
"" for the start of a line
"noremap <leader>l <Cmd>call stargate#OKvim('\_^')<CR>
"" for the last character on the line
"noremap <leader>E <Cmd>call stargate#OKvim('\S\s*$')<CR>
"" for the end of a line
"noremap <leader>$ <Cmd>call stargate#OKvim('$')<CR>
"" for any bracket, parentheses or curly bracket
"noremap <leader>[ <Cmd>call stargate#OKvim('[(){}[\]]')<CR>
"
highlight default StargateFocus guifg=#958c6a
highlight default StargateDesaturate guifg=#49423f
highlight default StargateError guifg=#d35b4b
highlight default StargateLabels guifg=#caa247 guibg=#171e2c
highlight default StargateErrorLabels guifg=#caa247 guibg=#551414
highlight default StargateMain guifg=#f2119c gui=bold cterm=bold
highlight default StargateSecondary guifg=#11ebff gui=bold cterm=bold
highlight default StargateShip guifg=#111111 guibg=#caa247
highlight default StargateVIM9000 guifg=#111111 guibg=#b2809f gui=bold cterm=bold
highlight default StargateMessage guifg=#a5b844
highlight default StargateErrorMessage guifg=#e36659
highlight default link StargateVisual Visual



Plug 'prabirshrestha/async.vim'


Plug 'tpope/vim-surround'

Plug 'ctrlpvim/ctrlp.vim' " file search

" User add package
"Plug 'gabrielelana/vim-markdown'
Plug 'shime/vim-livedown'
"Plug 'jaxbot/browserlink.vim'
" pretty status bar 
Plug 'vim-airline/vim-airline'
"python tool
"Plug 'davidhalter/jedi-vim'

"IM control

" Python convension  안쓰니까 일단 stop
Plug 'tell-k/vim-autopep8'
let g:syntastic_python_checkers = [ 'pep8' ]
"let g:syntastic_python_checkers = [ 'flake8' ]
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0




"latex
"
Plug 'lervag/vimtex'
"augroup VimCompletesMeTex
"	autocmd!
"	autocmd FileType tex
"			let b:vcm_omni_pattern = g:vimtex#re#neocomplete
"augroup END

" Using neosnippet#anonymous


let g:vimtex_imaps_leader= '`'

let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0

let g:vimtex_compiler_method = 'generic'
function! Callback(msg)
	" Use a regex match on the compiler output to get automatic VimtexErrors
	" functionality. The below conditional must likely be changed to be
	" useful, of course!
	if a:msg =~# 'error'
		call vimtex#compiler#callback(!vimtex#qf#inquire(b:vimtex.tex))
	endif
endfunction
let g:vimtex_compiler_generic = {
			\ 'command' : 'xelatex -synctex=1 --interaction=nonstopmode main.tex',
			\ 'hooks': [function('Callback')],
			\}

function! SetupSplits() abort
	split
	set conceallevel=2
	set scrollbind
	wincmd w
	set conceallevel=0
	set scrollbind
	syncbind
endfunction
function! Restore() abort
	close
	set conceallevel=0
	set noscrollbind
endfunction

let g:vimtex_syntax_custom_cmds = [ {'name': 'vect', 'mathmode': 1, 'argstyle': 'bold', 'conceal': 1}]
"let g:vimtex_syntax_custom_cmds = [ {'name': 'vect', 'mathmode': 1, 'argstyle': 'bold', 'conceal': 1}, {'name': 'mat' , 'mathmode': 1, 'argstyle': 'bold', 'conceal': 1}, {'name': 'bm'  , 'mathmode': 1, 'argstyle': 'bold', 'conceal': 1}, {'name': 'pmb' , 'mathmode': 1, 'argstyle': 'bold', 'conceal': 1}, \ Unicode:, {'name': 'Prob'    , 'mathmode': 1, 'concealchar': 'ℙ'}, {'name': 'Expect'  , 'mathmode': 1, 'concealchar': '������'}, {'name': 'Var'     , 'mathmode': 1, 'concealchar': '������'}, {'name': 'pdf'     , 'mathmode': 1, 'concealchar': '������'}, {'name': 'qdf'     , 'mathmode': 1, 'concealchar': '������'}, {'name': 'NormDist', 'mathmode': 1, 'concealchar': '������'}, {'name': 'Reals'   , 'mathmode': 1, 'concealchar': 'ℝ'}, {'name': 'Imags'   , 'mathmode': 1, 'concealchar': '������'}, {'name': 'Naturals', 'mathmode': 1, 'concealchar': 'ℕ'}, {'name': 'Integers', 'mathmode': 1, 'concealchar': 'ℤ'}, {'name': 'ones'    , 'mathmode': 1, 'concealchar': '������'}, {'name': 'bigO'    , 'mathmode': 1, 'concealchar': '������'}, ]
"set conceallevel=1
"let g:tex_conceal='abdmg'
augroup VimTeX
	autocmd!
	autocmd BufReadPre /home/kh/Dropbox/LaTex/thesis_doctor/*.tex
				\ let b:vimtex_main = '/home/kh/Dropbox/LaTex/thesis_doctor/main.tex'
	autocmd BufWritePost *.tex call vimtex#toc#refresh()
augroup END


" HTML CSS Javascript
Plug 'mattn/emmet-vim' " 4Star
" pretty view [10]
Plug 'junegunn/vim-easy-align' " 5Star
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

Plug 'godlygeek/tabular'  " easyalign like tool
" Gtrans
Plug 'haya14busa/vim-gtrans'

"Doxygen
Plug 'vim-scripts/DoxygenToolkit.vim'

"Wolfgang
"Plug 'WolfgangMehner/vim-plugins'


" GLSL 
"Plug 'tikhomirov/vim-glsl'

" 벽돌깨기 
"Plug 'johngrib/vim-game-code-break'
call plug#end()

"colorscheme
"colorscheme molokai
"colorscheme shine
"colorscheme desert
colorscheme gruvbox  " tyanjournal.com/timps/neovim-c-ide/ 에서 추천받음.
filetype plugin indent on     " required!
syntax on
scripte utf-8





" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
"End PlugScripts-------------------------


"set nocompatible    " Vim 디폴트 기능들을 사용함
set backspace=2     " 삽입 모드에서 백스페이스를 계속 허용
set autoindent      " 자동 들여쓰기 
set cindent         " c언어 자동 들여쓰기
"set smartindent     " 자동 들여쓰기 reddit/vim 에서 권장하지 않음. for
"normal text only
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
"set autowrite       " :next나 :make같은 명령을 입력하면 자동으로 저장
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




let mysyntaxfile = "~/.vim/mysyntax.vim"
syntax on
function Rand()
	return str2nr(matchstr(reltimestr(reltime()), '\v\.@<=\d+')[1:])
endfunction

" c-support    UseTool_cmake and doxygen
let g:C_UseTool_cmake    = 'yes'
let g:C_UseTool_doxygen  = 'yes'



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
xmap <C-k>     <Plug>(neosnippet_expand_or_jump)
nmap <C-k>     <Plug>(neosnippet_expand_or_jump)
" SuperTab like snippets behavior.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.

" For conceal markers.
if has('conceal')
	set conceallevel=2 concealcursor=niv
endif


let g:neosnippet#enable_snipmate_compatibility = 1
let g:neosnippet#enable_completed_snippet = 1
let g:neosnippet#snippets_directory="/home/kh/.vim/MyNeoSnippets,/home/kh/.vim/plugged/vim-snippets/snippets/"




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
autocmd FileType css           setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript    setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python        setlocal omnifunc=python3complete#Complete
autocmd FileType xml           setlocal omnifunc=xmlcomplete#CompleteTags
autocmd FileType python        set      omnifunc=python3complete#Complete




" KH --------
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
"let g:slime_target = "screen"
let g:slime_target = "tmux"
let g:slime_paste_file = tempname()
let g:slime_python_ipython =1


"abbr 
iabbr <expr> __email ekh0324@gmail.com
iabbr <expr> __time strftime("%Y-%m-%d %H:%M:%S")
iabbr <expr> __file expand('%:p')
iabbr <expr> __name expand('%')
iabbr <expr> __pwd expand('%:p:h')
iabbr <expr> __branch system("git rev-parse --abbrev-ref HEAD")
"imap <C-j> <C-W>j
"imap <C-k> <C-W>k
"imap <C-h> <C-W>h
"imap <C-l> <C-W>l

autocmd FileType tex inoremap <silent><expr> __ neosnippet#anonymous('_{${1}}${0}')
autocmd FileType tex inoremap <silent><expr> ^^ neosnippet#anonymous('^{${1}}${0}')


"  cscope
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

if has('python') " if dynamic py|py3, this line already activates python2.
	let s:python_version = 2
elseif has('python3')
	let s:python_version = 3
else
	let s:python_version = 0
endif
echomsg 'Using python'.s:python_version


"jedi-vim setup Python
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
" OmniCppComplete
let OmniCpp_NamespaceSearch = 1
let OmniCpp_GlobalScopeSearch = 1
let OmniCpp_ShowAccess = 1
let OmniCpp_ShowPrototypeInAbbr = 1 " show function parameters
let OmniCpp_MayCompleteDot = 1 " autocomplete after .
let OmniCpp_MayCompleteArrow = 1 " autocomplete after ->
let OmniCpp_MayCompleteScope = 1 " autocomplete after ::
let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]
" automatically open and close the popup menu / preview window
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
set completeopt=menuone,menu,longest,preview

set tags=./tags,./../tags,./../../tags,./../../../tags,./../../../../tags,./../../../../../tags,tags,../tags,.
set tags+=~/.vim/tags/cpp
set tags+=~/.vim/tags/gl
set tags+=~/.vim/tags/sdl
set tags+=~/.vim/tags/qt5
set tags+="~/.vim/tags/lammps"
set tags+="~/.vim/tags/gsl"
"au BufReadCmd *.odt,*.ott,*.ods,*.ots,*.odp,*.otp,*.odg,*.otg,*.odb,*.odf,*.odm,*.odc call zip#Browse(expand("<amatch>"))
"au BufReadCmd *.sxw,*.stw,*.sxc,*.stc,*.sxi,*.sti,*.sxd,*.std,*.odb,*.sxm,*.sxg,*.sxs call zip#Browse(expand("<amatch>"))
"au BufReadCmd *.bau call zip#Browse(expand("<amatch>"))
"au BufReadCmd *.oxt call zip#Browse(expand("<amatch>"))
"au BufReadCmd *.docx,*.dotx,*.dotm,*.docm,*.xlsx,*.xltx,*.xlsm,*.xsltm,*.pptx,*.potx,*.ppsx,*.pptm,*.ppsm,*.potm call zip#Browse(expand("<amatch>"))



map <S-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extras=+q .<CR>


" vmap <C-c> "+y
" vmap <C-x> "+d
" vmap <C-S-v> "*<Esc>"+p
" imap <C-S-v> <Esc>"+pi

packadd lsp
let lspServers = [
			\ 		#{
			\        filetype: ['awk'], path: '/home/kh/git/node_modules/awk-language-server/out/cli.js',
			\				 omnicompl: v:true
			\      },
			\     #{
			\        filetype: ['vala'],
			\        path: '/usr/bin/vala-language-server',
			\        omnicompl: v:true,
			\        args: []
			\      },
			\     #{
			\        filetype: ['tex'],
			\        path: '/home/kh/bin/texlab',
			\        omnicompl: v:true,
			\        args: []
			\      },
			\     #{
			\        filetype: ['c', 'cpp'],
			\        path: '/usr/bin/clangd',
			\        omnicompl: v:true,
			\        args: ['--background-index']
			\      },
			\     #{
			\	 filetype: ['javascript', 'typescript'],
			\	 path: '/usr/local/bin/typescript-language-server',
			\        omnicompl: v:true,
			\	 args: ['--stdio']
			\      },
			\     #{
			\	 filetype: 'sh',
			\	 path: '/usr/local/bin/bash-language-server',
			\        omnicompl: v:true,
			\	 args: ['start']
			\      },
			\     #{
			\	 filetype: 'vim',
			\	 path: '/usr/local/bin/vim-language-server',
			\        omnicompl: v:true,
			\	 args: ['--stdio']
			\      },
			\     #{
			\	 filetype: ['go', 'gomod'],
			\	 path: '/usr/bin/gopls',
			\        omnicompl: v:true,
			\	 args: ['serve'],
			\        syncInit: v:true
			\      },
			\     #{
			\	 filetype: ['rust'],
			\	 path: '/home/kh/.local/bin/rust-analyzer',
			\        omnicompl: v:true,
			\	 args: [],
			\        syncInit: v:true
			\      },
			\     #{
			\	 filetype: ['python'],
			\	 path: '/usr/bin/pyls',
			\        omnicompl: v:true,
			\	 args: []
			\      }
			\   ]
autocmd VimEnter * call LspAddServer(lspServers)

let lspOpts = {'autoHighlightDiags': v:true}
autocmd VimEnter * call LspOptionsSet(lspOpts)

nmap <silent> [g :LspDiagPrev
nmap <silent> ]g :LspDiagNext
nmap <silent> K :LspHover
nmap <unique> M <Plug>ManPageView

nmap <silent> gd :LspGotoDefinition
nmap <silent> gy :LspGotoTypeDef
nmap <silent> gi :LspGotoImpl
nmap <silent> gr :LspShowReference    

nmap <silent> <leader>rn :LspRename
xmap <silent> <leader>gf :LspFormat
nmap <silent> <leader>gf :LspFormat




" https://github.com/lilydjwg/fcitx.vim

packadd fcitx
let g:fcitx5_remote = '/usr/bin/fcitx5-remote'
set ttimeoutlen=100


set number

augroup numbertoggle
	autocmd!
	autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif
	autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu                  | set nornu | endif
augroup END




let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

"sql
"let g:sw_config_dir = g
let g:dbext_default_profile_mysql = 'type=MYSQL:user=kh:dbname=khdb'
let g:dbext_default_profile = 'mysql'


packadd vim9-syntax


let g:DoxygenToolkit_authorName="KIM Hyeok <ekh0324@gmail.com>"

let g:desktop_enable_kde = v:true
let g:desktop_enable_nonstd = 1


function! Synctex()
	execute "silent !zathura --synctex-forward " . line('.') . ":" . col('.') . ":" . bufname('%') . " " . g:syncpdf
	redraw!
endfunction
"map <C-enter> :call Synctex()<cr>

