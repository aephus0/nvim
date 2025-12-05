vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", "<cmd> Ex <CR>")

-- general mappings
vim.keymap.set("n", "<C-s>", "<cmd> w <CR>")
vim.keymap.set("i", "jk", "<ESC>")

-- Move selected lines up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Persist cursor while doing stuff
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-h>", "<C-d>zz")
vim.keymap.set("n", "<C-f>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Paste no replace
vim.keymap.set("x", "<leader>p", '"_dP')

-- Copy to system clipboard
vim.keymap.set("n", "<leader>y", '"+y')
vim.keymap.set("v", "<leader>y", '"+y')
vim.keymap.set("n", "<leader>Y", '"+Y')

-- Delete to void buffer
vim.keymap.set("n", "<leader>d", '"_d')
vim.keymap.set("v", "<leader>d", '"_d')

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- comment.nvim
vim.keymap.set("n", "<leader>/", "gcc", { remap = true })
vim.keymap.set("v", "<leader>/", "gc", { remap = true })

-- format
vim.keymap.set("n", "<leader>fm", function()
	require("conform").format()
end)

vim.keymap.set("n", '<leader>"', 'ysiw"', {remap = true})
vim.keymap.set("n", "<leader>'", "ysiw'", { remap = true })
vim.keymap.set("n", "<leader>(", "ysiw(", { remap = true })
vim.keymap.set("n", "<leader>[", "ysiw[" , { remap = true })
vim.keymap.set("n", "<leader>{", "ysiw{", { remap = true })
vim.keymap.set("n", "<leader><", "ysiw<" , { remap = true })
vim.keymap.set("n", "<leader>`", "ysiw`", { remap = true })

vim.keymap.set("n", "<leader>)", "ysiw)", { remap = true })
vim.keymap.set("n", "<leader>]", "ysiw]", { remap = true })
vim.keymap.set("n", "<leader>}", "ysiw}", { remap = true })
vim.keymap.set("n", "<leader>>", "ysiw>", { remap = true })

vim.keymap.set("v", '<leader>"', 'S"', {remap = true})
vim.keymap.set("v", "<leader>'", "S'", { remap = true })
vim.keymap.set("v", "<leader>(", "S(", { remap = true })
vim.keymap.set("v", "<leader>[", "S[" , { remap = true })
vim.keymap.set("v", "<leader>{", "S{", { remap = true })
vim.keymap.set("v", "<leader><", "S<" , { remap = true })
vim.keymap.set("v", "<leader>`", "S`", { remap = true })

vim.keymap.set("v", "<leader>)", "S)", { remap = true })
vim.keymap.set("v", "<leader>]", "S]", { remap = true })
vim.keymap.set("v", "<leader>}", "S}", { remap = true })
vim.keymap.set("v", "<leader>>", "S>", { remap = true })
