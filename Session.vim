let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd /etc/nixos/packages/neovim/config
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +12 /etc/nixos/flake.nix
badd +6 /etc/nixos/packages/default.nix
badd +1 /etc/nixos/packages/nixvim/default.nix
badd +2 init.lua
badd +1 lua/config/init.lua
badd +1 /etc/nixos/packages/nixvim/keymaps.nix
badd +1 /etc/nixos/packages/nixvim/options.nix
badd +7 /etc/nixos/packages/nixvim/plugins.nix
badd +4 lua/plugins/languages/c-cpp/cmake-tools.lua
badd +2 /etc/nixos/packages/nixvim/plugins/languages/c-cpp/cmake-tools.nix
badd +51 lua/plugins/languages/core/cmp.lua
badd +9 /etc/nixos/packages/nixvim/plugins/languages/core/cmp.nix
badd +1 lua/plugins/languages/core/codeium.lua
badd +5 /etc/nixos/packages/nixvim/plugins/languages/core/codeium.nix
badd +7 lua/plugins/languages/core/colorizer.lua
badd +3 /etc/nixos/packages/nixvim/plugins/languages/core/colorizer.nix
badd +1 lua/plugins/languages/core/conform.lua
badd +44 /etc/nixos/packages/nixvim/plugins/languages/core/conform.nix
badd +36 lua/plugins/languages/core/dap.lua
badd +35 /etc/nixos/packages/nixvim/plugins/languages/core/dap.nix
badd +29 lua/plugins/languages/core/lint.lua
badd +58 /etc/nixos/packages/nixvim/plugins/languages/core/lint.nix
badd +18 lua/plugins/languages/core/lspconfig.lua
badd +5 /etc/nixos/packages/nixvim/plugins/languages/core/lsp.nix
badd +10 lua/plugins/languages/core/luasnip.lua
badd +10 /etc/nixos/packages/nixvim/plugins/languages/core/luasnip.nix
badd +1 lua/plugins/languages/core/matchup.lua
badd +4 /etc/nixos/packages/nixvim/plugins/languages/core/matchup.nix
badd +1 lua/plugins/languages/core/otter.lua
badd +51 lua/plugins/languages/core/treesitter.lua
badd +4 /etc/nixos/packages/nixvim/plugins/languages/core/treesitter.nix
badd +3 lua/plugins/languages/core/treesj.lua
badd +2 /etc/nixos/packages/nixvim/plugins/languages/core/treesj.nix
badd +1 lua/plugins/languages/neorg/neorg.lua
badd +1 /etc/nixos/packages/nixvim/plugins/languages/neorg/neorg.nix
badd +1 lua/plugins/languages/neorg/table-mode.lua
badd +2 /etc/nixos/packages/nixvim/plugins/languages/neorg/table-mode.nix
badd +1 /etc/nixos/packages/nixvim/plugins/languages/neorg/default.nix
badd +10 /etc/nixos/packages/nixvim/plugins/languages/core/default.nix
badd +1 /etc/nixos/packages/nixvim/plugins/languages/c-cpp/default.nix
badd +7 lua/plugins/languages/org/orgmode.lua
badd +2 /etc/nixos/packages/nixvim/plugins/languages/org/orgmode.nix
badd +1 lua/plugins/languages/rust/crates.lua
badd +1 /etc/nixos/packages/nixvim/plugins/languages/rust/crates.nix
badd +1 /etc/nixos/packages/nixvim/plugins/languages/org/default.nix
badd +2 lua/plugins/languages/rust/rust.lua
badd +2 /etc/nixos/packages/nixvim/plugins/languages/rust/default.nix
badd +1 lua/plugins/languages/typst/typst.lua
badd +1 lua/plugins/languages/web/emmet.lua
badd +4 /etc/nixos/packages/nixvim/plugins/languages/web/emmet.nix
badd +2 lua/plugins/languages/web/package-info.lua
badd +2 /etc/nixos/packages/nixvim/plugins/languages/web/package-info.nix
badd +4 /etc/nixos/packages/nixvim/plugins/languages/web/default.nix
badd +1 lua/plugins/languages/init.lua
badd +9 /etc/nixos/packages/nixvim/plugins/languages/default.nix
badd +1 lua/plugins/ui/init.lua
badd +1 lua/plugins/ui/colorschemes/catppuccin.lua
badd +3 /etc/nixos/packages/nixvim/plugins/ui/colorschemes/catppuccin.nix
badd +22 lua/plugins/ui/layout/bufferline.lua
badd +1 /etc/nixos/packages/nixvim/plugins/ui/layout/bufferline.nix
badd +1 lua/plugins/ui/layout/dap-ui.lua
badd +1 /etc/nixos/packages/nixvim/plugins/ui/layout/dap-ui.nix
badd +32 lua/plugins/ui/layout/lualine.lua
badd +5 /etc/nixos/packages/nixvim/plugins/ui/layout/lualine.nix
badd +74 lua/plugins/ui/layout/neo-tree.lua
badd +21 /etc/nixos/packages/nixvim/plugins/ui/layout/neo-tree.nix
badd +20 lua/plugins/ui/layout/telescope.lua
badd +10 /etc/nixos/packages/nixvim/plugins/ui/layout/telescope.nix
badd +4 lua/plugins/ui/layout/tripych.lua
badd +3 /etc/nixos/packages/nixvim/plugins/ui/layout/triptych.nix
badd +1 lua/plugins/ui/layout/true-zen.lua
badd +1 lua/plugins/ui/layout/zen-mode.lua
badd +8 /etc/nixos/packages/nixvim/plugins/ui/layout/zen-mode.nix
badd +1 lua/plugins/ui/others/dap-virtual-text.lua
badd +1 /etc/nixos/packages/nixvim/plugins/ui/others/dap-virtual-text.nix
badd +2 lua/plugins/ui/others/hologram.lua
badd +2 /etc/nixos/packages/nixvim/plugins/ui/others/hologram.nix
badd +5 /etc/nixos/packages/nixvim/plugins/ui/others/default.nix
badd +3 /etc/nixos/packages/nixvim/plugins/ui/layout/default.nix
badd +1 lua/plugins/ui/others/indent-blankline.lua
badd +2 /etc/nixos/packages/nixvim/plugins/ui/others/indent-blankline.nix
badd +23 lua/plugins/ui/pages/alpha.lua
badd +1 /etc/nixos/packages/nixvim/plugins/ui/pages/alpha.nix
badd +1 lua/plugins/ui/pages/oil.lua
badd +1 /etc/nixos/packages/nixvim/plugins/ui/pages/oil.nix
badd +16 lua/plugins/ui/pages/toggleterm.lua
badd +18 /etc/nixos/packages/nixvim/plugins/ui/pages/toggleterm.nix
badd +4 /etc/nixos/packages/nixvim/plugins/ui/pages/default.nix
badd +3 /etc/nixos/packages/nixvim/plugins/ui/default.nix
badd +1 lua/plugins/utilities/code/autopairs.lua
badd +1 /etc/nixos/packages/nixvim/plugins/utilities/code/autopairs.nix
badd +1 lua/plugins/utilities/code/comment.lua
badd +2 /etc/nixos/packages/nixvim/plugins/utilities/code/comment
badd +1 /etc/nixos/packages/nixvim/plugins/utilities/code/comment.nix
badd +1 lua/plugins/utilities/code/surround.lua
badd +2 /etc/nixos/packages/nixvim/plugins/utilities/code/surround.nix
badd +1 lua/plugins/utilities/code/visual-multi.lua
badd +4 /etc/nixos/packages/nixvim/plugins/utilities/code/multicursors.nix
badd +1 /etc/nixos/packages/nixvim/plugins/utilities/code/default.nix
badd +6 lua/plugins/utilities/others/flash.lua
badd +1 /etc/nixos/packages/nixvim/plugins/utilities/others/flash.nix
badd +14 lua/plugins/utilities/others/git-worktree.lua
badd +1 /etc/nixos/packages/nixvim/plugins/utilities/others/git-worktree.nix
badd +1 lua/plugins/utilities/others/presence.lua
badd +1 /etc/nixos/packages/nixvim/plugins/utilities/others/presence.nix
badd +8 lua/plugins/utilities/others/project-manager.lua
badd +2 /etc/nixos/packages/nixvim/plugins/utilities/others/projectmgr.nix
badd +2 lua/plugins/utilities/others/project.lua
badd +1 lua/plugins/utilities/others/which-key.lua
badd +1 /etc/nixos/packages/nixvim/plugins/utilities/others/project.nix
badd +1 /etc/nixos/packages/nixvim/plugins/utilities/others/which-key.nix
badd +8 lua/plugins/utilities/others/wrapping.lua
badd +2 /etc/nixos/packages/nixvim/plugins/utilities/others/wrapping.nix
badd +3 /etc/nixos/packages/nixvim/plugins/utilities/others/default.nix
badd +5 /etc/nixos/packages/nixvim/plugins/utilities/default.nix
badd +30 lua/config/options.lua
badd +2 /etc/nixos/packages/nixvim/plugins/ui/pages/lazygit.nix
badd +99 /etc/nixos/packages/firefox/default.nix
badd +73 /etc/nixos/configuration.nix
badd +20 /etc/nixos/packages/hyprland/setup.nix
badd +5 /etc/nixos/packages/discord/default.nix
badd +6 /etc/nixos/home.nix
badd +13 /etc/nixos/packages/hyprland/default.nix
badd +1 /etc/nixos/packages/sddm/theme.nix
badd +21 /etc/nixos/themes/default.nix
badd +1 /etc/nixos/packages/neovim/config/lua/plugins/ui/colorschemes/base16.lua
argglobal
%argdel
edit /etc/nixos/packages/neovim/config/lua/plugins/ui/colorschemes/base16.lua
argglobal
balt lua/config/options.lua
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
let s:l = 2 - ((1 * winheight(0) + 23) / 46)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 2
normal! 022|
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
