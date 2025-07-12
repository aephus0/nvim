local o = vim.o

-- Set the leader key
vim.g.mapleader = " "

-- Set the cursor to fat
o.guicursor = ""

-- Show number and relativenumber
o.nu = true
o.relativenumber = true

o.laststatus = 3 -- global statusline
o.showmode = false

-- Indenting
o.shiftwidth = 4
o.tabstop = 4
o.softtabstop = 4
o.expandtab = true
o.smartindent = true

-- No line wraps
o.wrap = false

-- Disable swapfile and use undofile for undotree
o.swapfile = false
o.backup = false
o.undodir = os.getenv("HOME") .. "/.vim/undodir"
o.undofile = true

-- No hightlight search but show as you search
o.hlsearch = false
o.incsearch = true

o.termguicolors = true

o.scrolloff = 8
o.signcolumn = "yes"
vim.opt.isfname:append("@-@")

o.updatetime = 50

o.colorcolumn = "80"

-- add binaries installed by mason.nvim to path
local is_windows = vim.loop.os_uname().sysname == "Windows_NT"
vim.env.PATH = vim.env.PATH .. (is_windows and ";" or ":") .. vim.fn.stdpath "data" .. "/mason/bin"

vim.api.nvim_set_hl(0, "IndentLine", { link = "Comment" })
