require("wiggo.options")
require("wiggo.mappings")
require("wiggo.lazy_init")

local augroup = vim.api.nvim_create_augroup
local WiggoGroup = augroup('WiggoGroup', {})

local autocmd = vim.api.nvim_create_autocmd
local yank_group = augroup('HighlightYank', {})

function R(name)
    require("plenary.reload").reload_module(name)
end

vim.filetype.add({
    extension = {
        templ = 'templ',
    }
})

autocmd('TextYankPost', {
    group = yank_group,
    pattern = '*',
    callback = function()
        vim.highlight.on_yank({
            higroup = 'IncSearch',
            timeout = 40,
        })
    end,
})

autocmd({"BufWritePre"}, {
    group = WiggoGroup,
    pattern = "*",
    command = [[%s/\s\+$//e]],
})

autocmd('BufEnter', {
    group = WiggoGroup,
    callback = function()
            vim.cmd.colorscheme("rose-pine")
        end
})

autocmd('LspAttach', {
    group = WiggoGroup,
    callback = function(e)
        local opts = { buffer = e.buf }
        vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, {buffer = e.buf, desc = "Go to Definition"})
        vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
        vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, vim.tbl_extend("force", opts, {desc = "Workspace Symbol"}))
        vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, vim.tbl_extend("force", opts, {desc = "Open Diagnostic Float"}))
        vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, vim.tbl_extend("force", opts, {desc = "Code Action"}))
        vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, vim.tbl_extend("force", opts, {desc = "References"}))
        vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, vim.tbl_extend("force", opts, {desc = "Rename"}))
        vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, vim.tbl_extend("force", opts, {desc = "Signature Help"}))
        vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, vim.tbl_extend("force", opts, {desc = "Next Diagnostic"}))
        vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, vim.tbl_extend("force", opts, {desc = "Previous Diagnostic"}))
        vim.keymap.set("n", "<leader>vo", function()
            vim.lsp.buf.code_action({
                context = { only = {"source.organizeImports"} }
            })
        end, vim.tbl_extend("force", opts, {desc = "Organize Imports"}))
        vim.keymap.set("n", "<leader>vf", function()
            vim.lsp.buf.code_action({
                range = {
                    start = {vim.fn.line("."), 0},
                    ["end"] = {vim.fn.line("."), 0}
                }
            })
        end, vim.tbl_extend("force", opts, {desc = "Format Document"}))
        vim.keymap.set("n", "<leader>vF", function()
            vim.lsp.buf.code_action({
                context = { only = {"source.fixAll"} }
            })
        end, vim.tbl_extend("force", opts, {desc = "Fix All"}))
    end
})

vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25
