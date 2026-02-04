vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", "<cmd> Ex <CR>", { desc = "Open file explorer" })

-- general mappings
vim.keymap.set("n", "<C-s>", "<cmd> w <CR>", { desc = "Save file" })
vim.keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode" })

-- Move selected lines up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move selected lines down" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move selected lines up" })

-- Persist cursor while doing stuff
vim.keymap.set("n", "J", "mzJ`z", { desc = "Join lines without moving cursor" })
vim.keymap.set("n", "<C-h>", "<C-d>zz", { desc = "Scroll half page down and center cursor" })
vim.keymap.set("n", "<C-f>", "<C-u>zz", { desc = "Scroll half page up and center cursor" })
vim.keymap.set("n", "n", "nzzzv", { desc = "Next search result and center cursor" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "Previous search result and center cursor" })

-- Paste no replace
vim.keymap.set("x", "<leader>p", '"_dP', { desc = "Paste without replacing clipboard" })

-- Copy to system clipboard
vim.keymap.set("n", "<leader>y", '"+y', { desc = "Yank to system clipboard" })
vim.keymap.set("v", "<leader>y", '"+y', { desc = "Yank to system clipboard" })
vim.keymap.set("n", "<leader>Y", '"+Y', { desc = "Yank line to system clipboard" })

-- Delete to void buffer
vim.keymap.set("n", "<leader>d", '"_d', { desc = "Delete to void buffer" })
vim.keymap.set("v", "<leader>d", '"_d', { desc = "Delete to void buffer" })

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz", { desc = "Go to next location in quickfix list" })
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz", { desc = "Go to previous location in quickfix list" })
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz", {desc = "Go to next location in location list"})
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz", {desc = "Go to previous location in location list"})

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = "Substitute word under cursor" })
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true }, { desc = "Make current file executable" })

-- comment.nvim
vim.keymap.set("n", "<leader>/", "gcc", { remap = true, desc = "Toggle comment" })
vim.keymap.set("v", "<leader>/", "gc", { remap = true, desc = "Toggle comment" })

-- format
vim.keymap.set("n", "<leader>fm", function()
	require("conform").format()
end, { desc = "Format current buffer" })

