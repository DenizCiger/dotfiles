return {{
    "nvim-tree/nvim-tree.lua",
    dependencies = {"nvim-tree/nvim-web-devicons"},
    config = function()
        require("nvim-tree").setup({
            view = {
                width = 30,
                side = "left"
            },
            renderer = {
                group_empty = true
            },
            filters = {
                dotfiles = false
            },
            git = {
                enable = true
            }
        })
        -- Keybinding: <leader>cd to toggle file explorer
        vim.keymap.set('n', '<leader>cd', ':NvimTreeToggle<CR>', {
            noremap = true,
            silent = true,
            desc = 'Toggle file explorer'
        })
    end
}}
