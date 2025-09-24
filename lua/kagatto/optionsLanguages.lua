vim.cmd([[
    augroup FileTypeIndent
        autocmd!

        " Web Development
        autocmd FileType html setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2
        autocmd FileType css setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2
        autocmd FileType javascript setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2
        autocmd FileType typescript setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2
        autocmd FileType typescriptreact setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2

        " Other
        autocmd FileType markdown setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2

    augroup END
]])
