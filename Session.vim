let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/.dotfiles
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +3 nvim/.config/nvim/lua/mark/lazy/surround.lua
badd +494 i3/.config/i3/config
badd +20 nvim/.config/nvim/lua/mark/lazy/auto-save.lua
badd +7 nvim/.config/nvim/lua/mark/lazy/init.lua
badd +1 nvim/.config/nvim/lua/mark/lazy/rainbow-delimiters.lua
badd +59 nvim/.config/nvim/lua/mark/lazy/lsp.lua
badd +1 nvim/.config/nvim/init.lua
badd +1 tmux/.config/tmux/tmux.conf
badd +83 nvim/.config/nvim/lua/mark/remap.lua
badd +96 nvim/.config/nvim/lua/mark/init.lua
badd +1 nvim/.config/nvim/lua/mark/lazy_init.lua
badd +33 nvim/.config/nvim/lua/mark/set.lua
badd +59 nvim/.config/nvim/lua/mark/lazy/colors.lua
badd +9 zsh/.zsh_profile
badd +91 zsh/.zshrc
badd +2 picom/.config/picom.conf
badd +25 nvim/.config/nvim/lua/mark/lazy/telescope.lua
badd +47 ~/.xinitrc
badd +1 term://~/.dotfiles//17098:/usr/bin/zsh
badd +16 nvim/.config/nvim/lua/mark/lazy/which-key.lua
badd +33 i3/.config/i3/blocks/calendar
badd +22 nvim/.config/nvim/lua/mark/lazy/luasnip.lua
badd +52 nvim/.config/nvim/lua/mark/lazy/treesitter.lua
badd +11 nvim/.config/nvim/lua/mark/lazy/harpoon.lua
badd +1 README.md
badd +9 nvim/.config/nvim/lua/mark/lazy/trouble.lua
badd +1 nvim/.config/nvim/lua/mark/lazy/fugitive.lua
badd +8 ~/work/avatao/marko1777-hardcoded-cryptographic-secrets/solvable/src/webservice/main.cpp
badd +1 ~/practice/leetcode/main.cc
badd +78 ~/work/avatao/marko1777-unneeded-features-docs/solvable/src/solution/password_manager.h
badd +17 ~/work/avatao/marko1777-misuse-of-nonce/solvable/src/user/client.h
badd +2 nvim/.config/nvim/lua/mark/lazy/go.lua
badd +28 nvim/.config/nvim/lua/mark/lazy/neotest.lua
badd +4 nvim/.config/nvim/lua/mark/lazy/todo-comments.lua
badd +1 \'
badd +18 nvim/.config/nvim/lua/mark/lazy/lualine.lua
badd +7 nvim/.config/nvim/lua/mark/lazy/wordmotion.lua
badd +21 nvim/.config/nvim/lua/mark/lazy/nvim-dap.lua
badd +1 nvim/.config/nvim/lua/mark/lazy/lazydev.lua
badd +106 nvim/.config/nvim/lua/mark/lazy/debug.lua
badd +12 nvim/.config/nvim/lua/mark/lazy/autopairs.lua
badd +1 nvim/.config/nvim/lua/mark/lazy/lazy-docker.lua
badd +24 nvim/.config/nvim/lua/mark/lazy/conform.lua
badd +16 health://
badd +2 nvim/.config/nvim/lua/mark/lazy/vim-go.lua
badd +10 nvim/.config/nvim/lua/mark/lazy/refactoring.lua
badd +63 ~/.local/share/nvim/lazy/telescope.nvim/lua/telescope/builtin/init.lua
badd +1 nvim/.config/nvim/lua/mark/lazy/vim-visual-multi.lua
badd +1 nvim/.config/nvim/lua/mark/lazy
badd +1 dunst/.config
badd +33 dunst/.config/dunst/dunstrc
badd +1 dunst/.config/dunst/dunstrc.d/02-brightness.conf
badd +5 dunst/.config/dunst/dunstrc.d/03-volume.conf
badd +5 install
badd +4 clean-env
badd +1 2024-12-06-150023_3200x1080_scrot.png
badd +1 .gitmodules
badd +2 i3/.config/i3/scripts/toggle_keyboard_layout
badd +42 i3/.config/i3/scripts/brightness
badd +46 i3/.config/i3/scripts/volume
badd +1 ~/.dotfiles
argglobal
%argdel
$argadd ~/.dotfiles
edit i3/.config/i3/scripts/volume
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 95 + 95) / 191)
exe 'vert 2resize ' . ((&columns * 95 + 95) / 191)
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
silent! normal! zE
let &fdl = &fdl
let s:l = 41 - ((28 * winheight(0) + 26) / 53)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 41
normal! 09|
lcd ~/.dotfiles
wincmd w
argglobal
if bufexists(fnamemodify("~/.dotfiles/i3/.config/i3/config", ":p")) | buffer ~/.dotfiles/i3/.config/i3/config | else | edit ~/.dotfiles/i3/.config/i3/config | endif
if &buftype ==# 'terminal'
  silent file ~/.dotfiles/i3/.config/i3/config
endif
balt ~/.dotfiles/i3/.config/i3/scripts/brightness
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
let s:l = 494 - ((25 * winheight(0) + 26) / 53)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 494
normal! 0
lcd ~/.dotfiles
wincmd w
exe 'vert 1resize ' . ((&columns * 95 + 95) / 191)
exe 'vert 2resize ' . ((&columns * 95 + 95) / 191)
tabnext 1
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0 && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20
let &shortmess = s:shortmess_save
let &winminheight = s:save_winminheight
let &winminwidth = s:save_winminwidth
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
set hlsearch
nohlsearch
let g:this_session = v:this_session
let g:this_obsession = v:this_session
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
