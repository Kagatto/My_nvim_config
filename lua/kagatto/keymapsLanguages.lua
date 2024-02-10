local function fileExtension()
    return vim.fn.expand('%:e')
end

vim.keymap.set("n", "<leader>ee", function()
    local extension = fileExtension()
    if extension == 'go' then
        vim.api.nvim_feedkeys("oif err != nil {\n}\027k", 'n', true)
    elseif extension == 'cpp' then
        vim.api.nvim_feedkeys("otry {\n}\ncatch(...) {\n}\027kkk", 'n', true)
    else
        print("No hay para este lenguaje :[")
    end
end)
