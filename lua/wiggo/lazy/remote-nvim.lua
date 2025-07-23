return {
    "amitds1997/remote-nvim.nvim",
    version = "*", -- Pin to GitHub releases
    dependencies = {
        "nvim-lua/plenary.nvim", -- For standard functions
        "MunifTanjim/nui.nvim", -- To build the plugin UI
        "nvim-telescope/telescope.nvim", -- For picking b/w different remote methods
    },
    config = function ()

        require("remote-nvim").setup({

            ssh_config = {
                ssh_binary = "ssh",
                scp_binary = "scp",
                ssh_config_file_paths = {"$HOME/.ssh/config"},

                ssh_prompts = {
                    {
                        match = "password",
                        type = "secret",
                        value_type = "static",
                        value = "",
                    },
                    {
                        match = "continue connecting (yes/no/[fingerprint])?",
                        type = "plain",
                        value_type = "static",
                        value = "",
                    }
                }
            },

            offline_mode = {
                enabled = true,
                no_github = false,
            },
        })
    end
}
