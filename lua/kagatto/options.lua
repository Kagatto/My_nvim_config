local options = {
    -- Mouse
    mouse = '',

    -- Tab
    tabstop = 4,
    softtabstop = 4,
    shiftwidth = 4,
    expandtab = true,
    smarttab = true,
    smartindent = true,
    autoindent = true,

    -- Other tabs
    splitbelow = false,
    splitright = true,

    -- UI config
    number = true,
    relativenumber = true,
    showmode = true,
    termguicolors = true,
    colorcolumn = "100",

    -- Searching
    incsearch = true,
    ignorecase = true,
    smartcase = true,
    hlsearch = false,

    -- Cursor
    scrolloff = 10,
    cursorline = true,

    -- Terminal
    title = true,
}

for option, value in pairs(options) do vim.opt[option] = value end
