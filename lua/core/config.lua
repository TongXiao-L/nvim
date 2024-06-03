local opt = vim.opt

-- color scheme
local colorscheme = "catppuccin"
vim.cmd("colorscheme " .. colorscheme)

-- appearance
opt.number = true
opt.cursorline = true
opt.termguicolors = true
opt.guicursor = "n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor,sm:block-blinkwait175-blinkoff150-blinkon175"

-- tab
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true

-- other
opt.mousemoveevent = true
