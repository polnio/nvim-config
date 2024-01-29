let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/.config/nvimfs
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +8 ~/.config/nvimfs/lua/plugins/languages/core/luasnip.lua
badd +1 ~/.config/nvimfs/lua/snippets/tex/delimiter.lua
badd +4 ~/.config/nvimfs/lua/snippets/tex/greek.lua
badd +493 ~/.config/nvimfs/lua/snippets/tex/math.lua
badd +24 ~/.config/nvimfs/lua/snippets/tex/static.lua
badd +22 ~/.config/nvimfs/lua/snippets/tex/core.lua
badd +1 ~/.config/nvimfs/lua/helpers.lua
badd +1 ~/.config/nvimfs/.stylua.toml
badd +4 ~/.config/nvimfs/lua/plugins/ui/others/hologram.lua
badd +1 ~/.config/nvimfs/init.lua
badd +3 ~/.config/nvimfs/lua/bootstrap/init.lua
badd +19 ~/.config/nvimfs/lua/bootstrap/lazy.lua
badd +1 ~/.config/nvimfs/after/ftplugin/tex.lua
badd +17 lua/config/options.lua
badd +27 lua/plugins/languages/core/treesitter.lua
badd +3 ~/.config/nvimfs/lua/plugins/languages/tex/vimtex.lua
badd +3 ~/.config/nvimfs/lua/plugins/languages/tex/hologram-math-preview.lua
badd +9 ~/.config/nvimfs/lua/plugins/languages/neorg/neorg.lua
badd +6 ~/.config/nvimfs/lua/plugins/languages/init.lua
badd +3 ~/.config/nvimfs/lua/plugins/languages/neorg/table-mode.lua
badd +6 ~/.config/nvimfs/lua/plugins/languages/tex/nvimager.lua
badd +3 ~/.config/nvimfs/lua/plugins/ui/others/../../languages/tex/nabla.lua
argglobal
%argdel
edit ~/.config/nvimfs/lua/snippets/tex/math.lua
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 425 - ((40 * winheight(0) + 20) / 41)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 425
normal! 015|
tabnext 1
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0 && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20
let &shortmess = s:shortmess_save
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
set hlsearch
nohlsearch
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
