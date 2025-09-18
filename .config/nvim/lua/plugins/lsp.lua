return {{
    "williamboman/mason.nvim",
    build = ":MasonUpdate",
    config = true
}, {
    "williamboman/mason-lspconfig.nvim",
    config = true
}, {
    "neovim/nvim-lspconfig",
    config = function()
        -- Enable LSP servers using vim.lsp.config (Neovim 0.11+)
        vim.lsp.config("pyright", {})
        vim.lsp.config("ts_ls", {})

        -- Recommended LSP keybindings
        local map = vim.keymap.set
        local base_opts = {
            noremap = true,
            silent = true
        }
        map('n', 'gd', vim.lsp.buf.definition, vim.tbl_extend("force", base_opts, {
            desc = "Go to definition"
        }))
        map('n', 'gD', vim.lsp.buf.declaration, vim.tbl_extend("force", base_opts, {
            desc = "Go to declaration"
        }))
        map('n', 'gi', vim.lsp.buf.implementation, vim.tbl_extend("force", base_opts, {
            desc = "Go to implementation"
        }))
        map('n', 'gr', vim.lsp.buf.references, vim.tbl_extend("force", base_opts, {
            desc = "List references"
        }))
        map('n', 'K', vim.lsp.buf.hover, vim.tbl_extend("force", base_opts, {
            desc = "Hover documentation"
        }))
        map('n', '<leader>rn', vim.lsp.buf.rename, vim.tbl_extend("force", base_opts, {
            desc = "Rename symbol"
        }))
        map('n', '<leader>ca', vim.lsp.buf.code_action, vim.tbl_extend("force", base_opts, {
            desc = "Code actions"
        }))
    end
}}
