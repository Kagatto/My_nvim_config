return {
    -- LSP Zero
    'VonHeikemen/lsp-zero.nvim',
    version = 'v3.x',
    dependencies = {
        --- Uncomment these if you want to manage LSP servers from neovim
        {'williamboman/mason.nvim'},

        -- LSP Support
        -- You will have to look more into this config basically
        -- Autocompletion
        {'hrsh7th/nvim-cmp'},
        {'hrsh7th/cmp-nvim-lsp'},
        {'L3MON4D3/LuaSnip'},
    },
    config = function()
        vim.lsp.set_log_level("debug")

        local lsp_zero = require('lsp-zero')

        lsp_zero.on_attach(function(client, bufnr)
            -- see :help lsp-zero-keybindings
            -- to learn the available actions
            lsp_zero.default_keymaps({buffer = bufnr})
        end)

        require('mason').setup({})
        -- Replace the language servers listed here 
        -- with the ones you want to install
        --ensure_installed = {
        --    'tsserver',
        --    'rust_analyzer',
        --    'eslint',
        --    'gopls',
        --    'pyright',
        --    'html',
        --    'tailwindcss',
        -- },
        --handlers = {
        --    lsp_zero.default_setup,
        --},

        -- require('lspconfig').clangd.setup({})
        -- require('lspconfig').html.setup({})
        -- require('lspconfig').tailwindcss.setup({})
        -- require('lspconfig').tsserver.setup({})
    end,
}
