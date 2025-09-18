return {{
    "folke/which-key.nvim",
    config = function()
        require("which-key").setup({})
    end
}, {
    "kosayoda/nvim-lightbulb",
    config = function()
        require("nvim-lightbulb").setup({
            autocmd = {
                enabled = true
            }
        })
    end
}}
