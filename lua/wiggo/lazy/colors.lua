function SetColorScheme(color)
	color = color or "rose-pine"
	vim.cmd.colorscheme(color)

    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    vim.api.nvim_set_hl(0, "TelescopeNormal", { bg = "none" })
end

return {

    {
        "rose-pine/neovim",
        name = "rose-pine",
        config = function()
            require('rose-pine').setup({
                disable_background = true,
                variant = "moon",
                dark_variant = "moon",
                styles = {
                    italic = false,
                    transparency = true
                },
                enable = {
                    terminal = true,
                    legacy_highlights = true,
                    migrations = true
                }
            })

            SetColorScheme();
        end
    },

}
