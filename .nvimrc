version 6.0
let s:cpo_save=&cpo
set cpo&vim
cnoremap <silent> <Plug>(TelescopeFuzzyCommandSearch) e "lua require('telescope.builtin').command_history { default_text = [=[" . escape(getcmdline(), '"') . "]=] }"
inoremap <silent> <C-S> <Cmd>w
inoremap <silent> <M-k> <Cmd>m .-2==gi
inoremap <silent> <M-j> <Cmd>m .+1==gi
inoremap <silent> <expr> <BS> v:lua.MiniPairs.bs()
cnoremap <silent> <C-R> <Cmd>lua require("which-key").show("\18", {mode = "c", auto = true})
inoremap <silent> <C-R> <Cmd>lua require("which-key").show("\18", {mode = "i", auto = true})
inoremap <silent> <C-Bslash> <Cmd>ToggleTerm
inoremap <C-W> u
inoremap <C-U> u
xnoremap <silent>  <Cmd>lua require('neoscroll').scroll(-vim.api.nvim_win_get_height(0), true, 450)
xnoremap <silent>  <Cmd>lua require('neoscroll').scroll(vim.wo.scroll, true, 250)
nnoremap <silent>  <Cmd>lua require('neoscroll').scroll(vim.wo.scroll, true, 250)
xnoremap <silent>  <Cmd>lua require('neoscroll').scroll(0.10, false, 100)
nnoremap <silent>  <Cmd>lua require('neoscroll').scroll(0.10, false, 100)
xnoremap <silent>  <Cmd>lua require('neoscroll').scroll(vim.api.nvim_win_get_height(0), true, 450)
nnoremap <silent>  :Gen
vnoremap <silent>  :Gen
tnoremap <silent>  <Cmd>wincmd h
nnoremap <silent>  h
tnoremap <silent> <NL> <Cmd>wincmd j
nnoremap <silent> <NL> j
tnoremap <silent>  <Cmd>wincmd k
nnoremap <silent>  k
tnoremap <silent>  <Cmd>wincmd l
nnoremap <silent>  l
nnoremap <silent>  :q!
snoremap <silent>  <Cmd>w
nnoremap <silent>  <Cmd>w
xnoremap <silent>  <Cmd>w
xnoremap <silent>  <Cmd>lua require('neoscroll').scroll(-vim.wo.scroll, true, 250)
nnoremap <silent>  <Cmd>lua require('neoscroll').scroll(-vim.wo.scroll, true, 250)
nnoremap <silent> Þ <Nop>
nnoremap <silent>  <Cmd>lua require("which-key").show("\23", {mode = "n", auto = true})
xnoremap <silent>  <Cmd>lua require('neoscroll').scroll(-0.10, false, 100)
nnoremap <silent>  <Cmd>lua require('neoscroll').scroll(-0.10, false, 100)
tnoremap <silent>  
nnoremap <silent>  <Cmd>noh
nnoremap <silent>  <Cmd>execute v:count . "ToggleTerm"
tnoremap <silent>  <Cmd>close
nnoremap <silent>  Þ <Nop>
nnoremap <silent>   <Cmd>lua require("which-key").show(" ", {mode = "n", auto = true})
nnoremap <silent>  bÞ <Nop>
nnoremap <silent>  b <Cmd>lua require("which-key").show(" b", {mode = "n", auto = true})
nnoremap <silent>  cÞ <Nop>
nnoremap <silent>  c <Cmd>lua require("which-key").show(" c", {mode = "n", auto = true})
nnoremap  xQ <Cmd>TroubleToggle quickfix
nnoremap  xL <Cmd>TroubleToggle loclist
nnoremap  xX <Cmd>TroubleToggle workspace_diagnostics
nnoremap  xx <Cmd>TroubleToggle document_diagnostics
nnoremap  sT <Cmd>TodoTelescope keywords=TODO,FIX,FIXME
nnoremap  st <Cmd>TodoTelescope
nnoremap  xT <Cmd>TodoTrouble keywords=TODO,FIX,FIXME
nnoremap  xt <Cmd>TodoTrouble
nnoremap  cm <Cmd>Mason
nnoremap  sR <Cmd>Telescope resume
nnoremap  so <Cmd>Telescope vim_options
nnoremap  sm <Cmd>Telescope marks
nnoremap  sM <Cmd>Telescope man_pages
nnoremap  sk <Cmd>Telescope keymaps
nnoremap  sH <Cmd>Telescope highlights
nnoremap  sh <Cmd>Telescope help_tags
nnoremap  sD <Cmd>Telescope diagnostics
nnoremap  sd <Cmd>Telescope diagnostics bufnr=0
nnoremap  sC <Cmd>Telescope commands
nnoremap  sc <Cmd>Telescope command_history
nnoremap  sb <Cmd>Telescope current_buffer_fuzzy_find
nnoremap  sa <Cmd>Telescope autocommands
nnoremap  s" <Cmd>Telescope registers
nnoremap  gs <Cmd>Telescope git_status
nnoremap  gc <Cmd>Telescope git_commits
nnoremap  fr <Cmd>Telescope oldfiles
nnoremap  fb <Cmd>Telescope buffers sort_mru=true sort_lastused=true
nnoremap  : <Cmd>Telescope command_history
nnoremap  , <Cmd>Telescope buffers sort_mru=true sort_lastused=true
nnoremap <silent>  	[ <Cmd>tabprevious
nnoremap <silent>  	d <Cmd>tabclose
nnoremap <silent>  	] <Cmd>tabnext
nnoremap <silent>  		 <Cmd>tabnew
nnoremap <silent>  	f <Cmd>tabfirst
nnoremap <silent>  	l <Cmd>tablast
nnoremap <silent>  | v
nnoremap <silent>  - s
nnoremap <silent>  w| v
nnoremap <silent>  w- s
nnoremap <silent>  wd c
nnoremap <silent>  ww p
nnoremap <silent>  qq <Cmd>qa
nnoremap <silent>  xq <Cmd>copen
nnoremap <silent>  xl <Cmd>lopen
nnoremap <silent>  fn <Cmd>enew
nnoremap <silent>  l <Cmd>Lazy
nnoremap <silent>  K <Cmd>norm! K
nnoremap <silent>  ur <Cmd>nohlsearch|diffupdate|normal! 
nnoremap <silent>  ` <Cmd>e #
nnoremap <silent>  bb <Cmd>e #
nnoremap  bl <Cmd>BufferLineCloseLeft
nnoremap  br <Cmd>BufferLineCloseRight
nnoremap  bo <Cmd>BufferLineCloseOthers
nnoremap  bP <Cmd>BufferLineGroupClose ungrouped
nnoremap  bp <Cmd>BufferLineTogglePin
xnoremap <silent>  	Þ <Nop>
xnoremap <silent>  xÞ <Nop>
xnoremap <silent>  bÞ <Nop>
xnoremap <silent>  fÞ <Nop>
xnoremap <silent>  ghÞ <Nop>
xnoremap <silent>  gÞ <Nop>
xnoremap <silent>  wÞ <Nop>
xnoremap <silent>  qÞ <Nop>
xnoremap <silent>  uÞ <Nop>
xnoremap <silent>  snÞ <Nop>
nnoremap <silent>  ghÞ <Nop>
nnoremap <silent>  wÞ <Nop>
nnoremap <silent>  	Þ <Nop>
xnoremap <silent>  cÞ <Nop>
xnoremap <silent>  sÞ <Nop>
xnoremap <silent>  Þ <Nop>
xnoremap <silent>   <Cmd>lua require("which-key").show(" ", {mode = "v", auto = true})
nnoremap <silent>  xÞ <Nop>
nnoremap <silent>  fÞ <Nop>
nnoremap <silent>  gÞ <Nop>
nnoremap <silent>  qÞ <Nop>
nnoremap <silent>  uÞ <Nop>
nnoremap <silent>  snÞ <Nop>
nnoremap <silent>  sÞ <Nop>
nmap  E  fE
nmap  e  fe
nnoremap <silent> !aÞ <Nop>
nnoremap <silent> !iÞ <Nop>
nnoremap <silent> !Þ <Nop>
nnoremap <silent> ! <Cmd>lua require("which-key").show("!", {mode = "n", auto = true})
xnoremap <silent> " <Cmd>lua require("which-key").show("\"", {mode = "v", auto = true})
nnoremap <silent> " <Cmd>lua require("which-key").show("\"", {mode = "n", auto = true})
omap <silent> % <Plug>(MatchitOperationForward)
xmap <silent> % <Plug>(MatchitVisualForward)
nmap <silent> % <Plug>(MatchitNormalForward)
nnoremap & :&&
nnoremap <silent> ' <Cmd>lua require("which-key").show("'", {mode = "n", auto = true})
vnoremap <silent> < <gv
nnoremap <silent> <aÞ <Nop>
nnoremap <silent> <iÞ <Nop>
nnoremap <silent> <Þ <Nop>
nnoremap <silent> < <Cmd>lua require("which-key").show("<", {mode = "n", auto = true})
vnoremap <silent> > >gv
nnoremap <silent> >aÞ <Nop>
nnoremap <silent> >iÞ <Nop>
nnoremap <silent> >Þ <Nop>
nnoremap <silent> > <Cmd>lua require("which-key").show(">", {mode = "n", auto = true})
nnoremap H <Cmd>BufferLineCyclePrev
nnoremap L <Cmd>BufferLineCycleNext
onoremap <silent> <expr> N 'nN'[v:searchforward]
xnoremap <silent> <expr> N 'nN'[v:searchforward]
nnoremap <silent> <expr> N 'nN'[v:searchforward].'zv'
nnoremap Y y$
onoremap <silent> [i <Cmd>lua MiniIndentscope.operator('top')
xnoremap <silent> [i <Cmd>lua MiniIndentscope.operator('top')
nnoremap <silent> [i <Cmd>lua MiniIndentscope.operator('top', true)
nnoremap [b <Cmd>BufferLineCyclePrev
xnoremap <silent> [Þ <Nop>
xnoremap <silent> [ <Cmd>lua require("which-key").show("[", {mode = "v", auto = true})
nnoremap <silent> [Þ <Nop>
nnoremap <silent> [ <Cmd>lua require("which-key").show("[", {mode = "n", auto = true})
omap <silent> [% <Plug>(MatchitOperationMultiBackward)
xmap <silent> [% <Plug>(MatchitVisualMultiBackward)
nmap <silent> [% <Plug>(MatchitNormalMultiBackward)
onoremap <silent> ]i <Cmd>lua MiniIndentscope.operator('bottom')
xnoremap <silent> ]i <Cmd>lua MiniIndentscope.operator('bottom')
nnoremap <silent> ]i <Cmd>lua MiniIndentscope.operator('bottom', true)
nnoremap ]b <Cmd>BufferLineCycleNext
xnoremap <silent> ]Þ <Nop>
xnoremap <silent> ] <Cmd>lua require("which-key").show("]", {mode = "v", auto = true})
nnoremap <silent> ]Þ <Nop>
nnoremap <silent> ] <Cmd>lua require("which-key").show("]", {mode = "n", auto = true})
omap <silent> ]% <Plug>(MatchitOperationMultiForward)
xmap <silent> ]% <Plug>(MatchitVisualMultiForward)
nmap <silent> ]% <Plug>(MatchitNormalMultiForward)
nnoremap <silent> ` <Cmd>lua require("which-key").show("`", {mode = "n", auto = true})
onoremap <silent> ai <Cmd>lua MiniIndentscope.textobject(true)
xnoremap <silent> ai <Cmd>lua MiniIndentscope.textobject(true)
xmap a% <Plug>(MatchitVisualTextObject)
nnoremap <silent> caÞ <Nop>
nnoremap <silent> ciÞ <Nop>
nnoremap <silent> cÞ <Nop>
nnoremap <silent> c <Cmd>lua require("which-key").show("c", {mode = "n", auto = true})
nnoremap <silent> dÞ <Nop>
nnoremap <silent> d <Cmd>lua require("which-key").show("d", {mode = "n", auto = true})
nnoremap <silent> daÞ <Nop>
nnoremap <silent> diÞ <Nop>
nnoremap <silent> gÞ <Nop>
nnoremap <silent> g <Cmd>lua require("which-key").show("g", {mode = "n", auto = true})
onoremap <silent> gc <Cmd>lua MiniComment.textobject()
xnoremap <silent> gc :lua MiniComment.operator('visual')
xnoremap <silent> gsÞ <Nop>
xnoremap <silent> gÞ <Nop>
xnoremap <silent> g <Cmd>lua require("which-key").show("g", {mode = "v", auto = true})
nnoremap <silent> guaÞ <Nop>
nnoremap <silent> guiÞ <Nop>
nnoremap <silent> guÞ <Nop>
nnoremap <silent> gUaÞ <Nop>
nnoremap <silent> gUiÞ <Nop>
nnoremap <silent> gUÞ <Nop>
nnoremap <silent> g~aÞ <Nop>
nnoremap <silent> g~iÞ <Nop>
nnoremap <silent> g~Þ <Nop>
nnoremap <silent> gsÞ <Nop>
omap <silent> g% <Plug>(MatchitOperationBackward)
xmap <silent> g% <Plug>(MatchitVisualBackward)
nmap <silent> g% <Plug>(MatchitNormalBackward)
onoremap <silent> ii <Cmd>lua MiniIndentscope.textobject(false)
xnoremap <silent> ii <Cmd>lua MiniIndentscope.textobject(false)
xnoremap <silent> <expr> j v:count == 0 ? 'gj' : 'j'
nnoremap <silent> <expr> j v:count == 0 ? 'gj' : 'j'
xnoremap <silent> <expr> k v:count == 0 ? 'gk' : 'k'
nnoremap <silent> <expr> k v:count == 0 ? 'gk' : 'k'
onoremap <silent> <expr> n 'Nn'[v:searchforward]
xnoremap <silent> <expr> n 'Nn'[v:searchforward]
nnoremap <silent> <expr> n 'Nn'[v:searchforward].'zv'
nnoremap <silent> vÞ <Nop>
nnoremap <silent> v <Cmd>lua require("which-key").show("v", {mode = "n", auto = true})
nnoremap <silent> vaÞ <Nop>
nnoremap <silent> viÞ <Nop>
nnoremap <silent> yÞ <Nop>
nnoremap <silent> y <Cmd>lua require("which-key").show("y", {mode = "n", auto = true})
nnoremap <silent> yaÞ <Nop>
nnoremap <silent> yiÞ <Nop>
xnoremap <silent> zÞ <Nop>
xnoremap <silent> z <Cmd>lua require("which-key").show("z", {mode = "v", auto = true})
nnoremap <silent> zfaÞ <Nop>
nnoremap <silent> zfiÞ <Nop>
nnoremap <silent> zfÞ <Nop>
nnoremap <silent> zÞ <Nop>
nnoremap <silent> z <Cmd>lua require("which-key").show("z", {mode = "n", auto = true})
xnoremap <silent> zb <Cmd>lua require('neoscroll').zb(250)
nnoremap <silent> zb <Cmd>lua require('neoscroll').zb(250)
xnoremap <silent> zt <Cmd>lua require('neoscroll').zt(250)
nnoremap <silent> zt <Cmd>lua require('neoscroll').zt(250)
xnoremap <silent> zz <Cmd>lua require('neoscroll').zz(250)
nnoremap <silent> zz <Cmd>lua require('neoscroll').zz(250)
nnoremap <silent> <C-G> :Gen
vnoremap <silent> <C-G> :Gen
nnoremap <silent> <C-Q> :q!
tnoremap <silent> <C-_> <Cmd>close
tnoremap <silent> <C-/> <Cmd>close
tnoremap <silent> <C-L> <Cmd>wincmd l
tnoremap <silent> <C-K> <Cmd>wincmd k
tnoremap <silent> <C-J> <Cmd>wincmd j
tnoremap <silent> <C-H> <Cmd>wincmd h
snoremap <silent> <C-S> <Cmd>w
nnoremap <silent> <C-S> <Cmd>w
xnoremap <silent> <C-S> <Cmd>w
vnoremap <silent> <M-k> :m '<-2gv=gv
vnoremap <silent> <M-j> :m '>+1gv=gv
nnoremap <silent> <M-k> <Cmd>m .-2==
nnoremap <silent> <M-j> <Cmd>m .+1==
nnoremap <silent> <C-Right> <Cmd>vertical resize +2
nnoremap <silent> <C-Left> <Cmd>vertical resize -2
nnoremap <silent> <C-Down> <Cmd>resize -2
nnoremap <silent> <C-Up> <Cmd>resize +2
nnoremap <silent> <C-K> k
nnoremap <silent> <C-J> j
nnoremap <silent> <C-H> h
xnoremap <silent> <expr> <Up> v:count == 0 ? 'gk' : 'k'
nnoremap <silent> <expr> <Up> v:count == 0 ? 'gk' : 'k'
xnoremap <silent> <expr> <Down> v:count == 0 ? 'gj' : 'j'
nnoremap <silent> <expr> <Down> v:count == 0 ? 'gj' : 'j'
nnoremap <silent> <C-W>Þ <Nop>
nnoremap <silent> <C-W> <Cmd>lua require("which-key").show("\23", {mode = "n", auto = true})
xmap <silent> <Plug>(MatchitVisualTextObject) <Plug>(MatchitVisualMultiBackward)o<Plug>(MatchitVisualMultiForward)
onoremap <silent> <Plug>(MatchitOperationMultiForward) :call matchit#MultiMatch("W",  "o")
onoremap <silent> <Plug>(MatchitOperationMultiBackward) :call matchit#MultiMatch("bW", "o")
xnoremap <silent> <Plug>(MatchitVisualMultiForward) :call matchit#MultiMatch("W",  "n")m'gv``
xnoremap <silent> <Plug>(MatchitVisualMultiBackward) :call matchit#MultiMatch("bW", "n")m'gv``
nnoremap <silent> <Plug>(MatchitNormalMultiForward) :call matchit#MultiMatch("W",  "n")
nnoremap <silent> <Plug>(MatchitNormalMultiBackward) :call matchit#MultiMatch("bW", "n")
onoremap <silent> <Plug>(MatchitOperationBackward) :call matchit#Match_wrapper('',0,'o')
onoremap <silent> <Plug>(MatchitOperationForward) :call matchit#Match_wrapper('',1,'o')
xnoremap <silent> <Plug>(MatchitVisualBackward) :call matchit#Match_wrapper('',0,'v')m'gv``
xnoremap <silent> <Plug>(MatchitVisualForward) :call matchit#Match_wrapper('',1,'v'):if col("''") != col("$") | exe ":normal! m'" | endifgv``
nnoremap <silent> <Plug>(MatchitNormalBackward) :call matchit#Match_wrapper('',0,'n')
nnoremap <silent> <Plug>(MatchitNormalForward) :call matchit#Match_wrapper('',1,'n')
nnoremap <silent> <C-Bslash> <Cmd>execute v:count . "ToggleTerm"
xnoremap <silent> <C-Y> <Cmd>lua require('neoscroll').scroll(-0.10, false, 100)
nnoremap <silent> <C-Y> <Cmd>lua require('neoscroll').scroll(-0.10, false, 100)
xnoremap <silent> <C-U> <Cmd>lua require('neoscroll').scroll(-vim.wo.scroll, true, 250)
nnoremap <silent> <C-U> <Cmd>lua require('neoscroll').scroll(-vim.wo.scroll, true, 250)
xnoremap <silent> <C-D> <Cmd>lua require('neoscroll').scroll(vim.wo.scroll, true, 250)
nnoremap <silent> <C-D> <Cmd>lua require('neoscroll').scroll(vim.wo.scroll, true, 250)
xnoremap <silent> <C-B> <Cmd>lua require('neoscroll').scroll(-vim.api.nvim_win_get_height(0), true, 450)
xnoremap <silent> <C-F> <Cmd>lua require('neoscroll').scroll(vim.api.nvim_win_get_height(0), true, 450)
xnoremap <silent> <C-E> <Cmd>lua require('neoscroll').scroll(0.10, false, 100)
nnoremap <silent> <C-E> <Cmd>lua require('neoscroll').scroll(0.10, false, 100)
nnoremap <Plug>PlenaryTestFile :lua require('plenary.test_harness').test_file(vim.fn.expand("%:p"))
nnoremap <silent> <C-L> l
cnoremap <silent>  <Cmd>lua require("which-key").show("\18", {mode = "c", auto = true})
inoremap <silent>  <Cmd>lua require("which-key").show("\18", {mode = "i", auto = true})
inoremap <silent>  <Cmd>w
inoremap  u
inoremap  u
inoremap <silent>  <Cmd>noh
inoremap <silent>  <Cmd>ToggleTerm
inoremap <expr> " v:lua.MiniPairs.closeopen('""', "[^\\].")
inoremap <expr> ' v:lua.MiniPairs.closeopen("''", "[^%a\\].")
inoremap <expr> ) v:lua.MiniPairs.close("()", "[^\\].")
inoremap <silent> ; ;u
inoremap <expr> [ v:lua.MiniPairs.open("[]", "[^\\].")
inoremap <expr> ] v:lua.MiniPairs.close("[]", "[^\\].")
inoremap <expr> ` v:lua.MiniPairs.closeopen("``", "[^\\].")
inoremap <silent> jk 
inoremap <expr> { v:lua.MiniPairs.open("{}", "[^\\].")
inoremap <expr> } v:lua.MiniPairs.close("{}", "[^\\].")
let &cpo=s:cpo_save
unlet s:cpo_save
set autowrite
set clipboard=unnamedplus
set cmdheight=0
set completeopt=menuone,noselect
set confirm
set expandtab
set fillchars=diff:╱,eob:\ ,fold:\ ,foldclose:,foldopen:,foldsep:\ 
set formatexpr=v:lua.require'lazyvim.util'.format.formatexpr()
set formatoptions=qltnj
set grepformat=%f:%l:%c:%m
set grepprg=rg\ --vimgrep
set guicursor=a:NoiceHiddenCursor
set guifont=CaskaydiaCove\ Nerd\ Font:h13
set helplang=en
set ignorecase
set indentkeys=0{,0},0),0],0,,!^F,o,O,e
set iskeyword=@,48-57,_,192-255,-
set laststatus=3
set noloadplugins
set mouse=a
set packpath=/usr/share/nvim/runtime
set pumblend=10
set pumheight=10
set runtimepath=~/.config/nvim,~/.local/share/nvim/lazy/lazy.nvim,~/.local/share/nvim/lazy/mini.bufremove,~/.local/share/nvim/lazy/dressing.nvim,~/.local/share/nvim/lazy/nvim-ts-context-commentstring,~/.local/share/nvim/lazy/trouble.nvim,~/.local/share/nvim/lazy/conform.nvim,~/.local/share/nvim/lazy/nvim-ts-autotag,~/.local/share/nvim/lazy/nvim-lint,~/.local/share/nvim/lazy/vim-illuminate,~/.local/share/nvim/lazy/nvim-treesitter-context,~/.local/share/nvim/lazy/todo-comments.nvim,~/.local/share/nvim/lazy/mini.indentscope,~/.local/share/nvim/lazy/gitsigns.nvim,~/.local/share/nvim/lazy/indent-blankline.nvim,~/.local/share/nvim/lazy/mason-lspconfig.nvim,~/.local/share/nvim/lazy/mason.nvim,~/.local/share/nvim/lazy/neodev.nvim,~/.local/share/nvim/lazy/neoconf.nvim,~/.local/share/nvim/lazy/nvim-lspconfig,~/.local/share/nvim/lazy/persistence.nvim,~/.local/share/nvim/lazy/cmp-path,~/.local/share/nvim/lazy/cmp-buffer,~/.local/share/nvim/lazy/cmp-nvim-lsp,~/.local/share/nvim/lazy/trg-snippets,~/.local/share/nvim/lazy/cmp_luasnip,~/.local/share/nvim/lazy/friendly-snippets,~/.local/share/nvim/lazy/LuaSnip,~/.local/share/nvim/lazy/cmp-emoji,~/.local/share/nvim/lazy/nvim-cmp,~/.local/share/nvim/lazy/telescope-fzf-native.nvim,~/.local/share/nvim/lazy/telescope.nvim,~/.local/share/nvim/lazy/nvim-web-devicons,~/.local/share/nvim/lazy/mini.comment,~/.local/share/nvim/lazy/nvim-treesitter-textobjects,~/.local/share/nvim/lazy/nvim-treesitter,~/.local/share/nvim/lazy/lualine.nvim,~/.local/share/nvim/lazy/mini.pairs,~/.local/share/nvim/lazy/flash.nvim,~/.local/share/nvim/lazy/bufferline.nvim,~/.local/share/nvim/lazy/mini.ai,~/.local/share/nvim/lazy/which-key.nvim,~/.local/share/nvim/lazy/noice.nvim,~/.local/share/nvim/lazy/dashboard-nvim,~/.local/share/nvim/lazy/toggleterm.nvim,~/.local/share/nvim/lazy/tabnine-nvim,~/.local/share/nvim/lazy/neoscroll.nvim,~/.local/share/nvim/lazy/onedark.nvim,~/.local/share/nvim/lazy/LazyVim,~/.local/share/nvim/lazy/nui.nvim,~/.local/share/nvim/lazy/plenary.nvim,~/.local/share/nvim/lazy/neo-tree.nvim,/usr/share/nvim/runtime,/usr/share/nvim/runtime/pack/dist/opt/matchit,~/.local/state/nvim/lazy/readme,~/.local/share/nvim/lazy/indent-blankline.nvim/after,~/.local/share/nvim/lazy/cmp-path/after,~/.local/share/nvim/lazy/cmp-buffer/after,~/.local/share/nvim/lazy/cmp-nvim-lsp/after,~/.local/share/nvim/lazy/cmp_luasnip/after,~/.local/share/nvim/lazy/cmp-emoji/after
set scrolloff=8
set sessionoptions=buffers,curdir,tabpages,winsize,help,globals,skiprtp
set shiftround
set shiftwidth=2
set shortmess=CTOWlIFtoc
set noshowmode
set showtabline=2
set sidescrolloff=8
set smartcase
set smartindent
set splitbelow
set splitkeep=screen
set splitright
set statusline=\ 
set suffixes=.bak,~,.o,.h,.info,.swp,.obj,.snap
set noswapfile
set tabline=%!v:lua.nvim_bufferline()
set tabstop=2
set termguicolors
set timeoutlen=300
set undofile
set undolevels=10000
set updatetime=300
set virtualedit=block
set whichwrap=bs<>[]hl
set wildmode=longest:full,full
set window=52
set winminwidth=5
set nowritebackup
" vim: set ft=vim :
