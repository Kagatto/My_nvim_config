vim.cmd([[
    augroup FileTypeIndent
        autocmd!

        " HTML
        autocmd FileType html setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2

    augroup END
]])