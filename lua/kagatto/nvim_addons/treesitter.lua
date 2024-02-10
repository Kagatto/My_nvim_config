vim.opt.runtimepath:append("$HOME/.local/share/treesitter")

return {
    -- Treesitter
    'nvim-treesitter/nvim-treesitter',
    build = ":TSUpdate",
    -- Treesitter Playground
    'nvim-treesitter/playground',
    opts = {
        require'nvim-treesitter.configs'.setup {
            parser_install_dir = "$HOME/.local/share/treesitter",
            -- A list of parser names, or "all" (the five listed parsers should always be installed)
            ensure_installed = { "c", "cpp", "rust", "go", "javascript", "typescript", "html", "css", "lua", "vim", "vimdoc", "query" },

            ignore_install = { "verilog", "cmake" },

            -- Install parsers synchronously (only applied to `ensure_installed`)
            sync_install = false,

            auto_install = true,

            ---- If you need to change the installation directory of the parsers (see -> Advanced Setup)
            -- parser_install_dir = "/some/path/to/store/parsers", -- Remember to run vim.opt.runtimepath:append("/some/path/to/store/parsers")!

            highlight = {
                enable = true,

                -- Instead of true it can also be a list of languages
                additional_vim_regex_highlighting = false,
            }
        }
    }
    --[[
    config = function()
        vim.opt.runtimepath:append("$HOME/.local/share/treesitter")

        require'nvim-treesitter.configs'.setup {
            parser_install_dir = "$HOME/.local/share/treesitter",
            -- A list of parser names, or "all" (the five listed parsers should always be installed)
            ensure_installed = { "c", "cpp", "rust", "go", "javascript", "typescript", "html", "css", "lua", "vim", "vimdoc", "query" },

            ignore_install = { "verilog", "cmake" },

            -- Install parsers synchronously (only applied to `ensure_installed`)
            sync_install = false,

            auto_install = true,

            ---- If you need to change the installation directory of the parsers (see -> Advanced Setup)
            -- parser_install_dir = "/some/path/to/store/parsers", -- Remember to run vim.opt.runtimepath:append("/some/path/to/store/parsers")!

            highlight = {
                enable = true,

                -- Instead of true it can also be a list of languages
                additional_vim_regex_highlighting = false,
            }
        }
    end
    --]]
}
