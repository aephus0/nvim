return {
	"kylechui/nvim-surround",
	version = "^3.0.0", -- Use for stability; omit to use `main` branch for the latest features
	event = "VeryLazy",
	config = function()
		require("nvim-surround").setup({})

		vim.keymap.set("n", '<leader>"', 'ysiw"', { remap = true, desc = "Surround word with double quotes" })
		vim.keymap.set("n", "<leader>'", "ysiw'", { remap = true, desc = "Surround word with single quotes" })
		vim.keymap.set("n", "<leader>(", "ysiw(", { remap = true, desc = "Surround word with parentheses" })
		vim.keymap.set("n", "<leader>[", "ysiw[", { remap = true, desc = "Surround word with brackets" })
		vim.keymap.set("n", "<leader>{", "ysiw{", { remap = true, desc = "Surround word with braces" })
		vim.keymap.set("n", "<leader><", "ysiw<", { remap = true, desc = "Surround word with angle brackets" })
		vim.keymap.set("n", "<leader>`", "ysiw`", { remap = true, desc = "Surround word with backticks" })

		vim.keymap.set("n", "<leader>)", "ysiw)", { remap = true, desc = "Surround word with closing parentheses" })
		vim.keymap.set("n", "<leader>]", "ysiw]", { remap = true, desc = "Surround word with closing brackets" })
		vim.keymap.set("n", "<leader>}", "ysiw}", { remap = true, desc = "Surround word with closing braces" })
		vim.keymap.set("n", "<leader>>", "ysiw>", { remap = true, desc = "Surround word with closing angle brackets" })

		vim.keymap.set("v", '<leader>"', 'S"', { remap = true, desc = "Surround selection with double quotes" })
		vim.keymap.set("v", "<leader>'", "S'", { remap = true, desc = "Surround selection with single quotes" })
		vim.keymap.set("v", "<leader>(", "S(", { remap = true, desc = "Surround selection with parentheses" })
		vim.keymap.set("v", "<leader>[", "S[", { remap = true, desc = "Surround selection with brackets" })
		vim.keymap.set("v", "<leader>{", "S{", { remap = true, desc = "Surround selection with braces" })
		vim.keymap.set("v", "<leader><", "S<", { remap = true, desc = "Surround selection with angle brackets" })
		vim.keymap.set("v", "<leader>`", "S`", { remap = true, desc = "Surround selection with backticks" })

		vim.keymap.set("v", "<leader>)", "S)", { remap = true, desc = "Surround selection with closing parentheses" })
		vim.keymap.set("v", "<leader>]", "S]", { remap = true, desc = "Surround selection with closing brackets" })
		vim.keymap.set("v", "<leader>}", "S}", { remap = true, desc = "Surround selection with closing braces" })
		vim.keymap.set("v", "<leader>>", "S>", { remap = true, desc = "Surround selection with closing angle brackets" })
	end,
}
