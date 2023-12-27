require('nvim-treesitter.configs').setup({
    ensure_installed = {
        "javascript",
        "typescript",
        "html",
        "css",
        "xml",
        "php",
        "tsx",
        "rust",
        "lua",
        "c",
        "vim",
        "vimdoc",
        "query",
    },
    sync_install = false,
    -- Automatically install missing parsers when entering buffer
    -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
    -- auto_install = true,
    highlight = {
        enable = true,
        -- disable = { "css" },
        additional_vim_regex_highlighting = false,
    },
    autopairs = { enable = true },
    rainbow = {
        enable = true,
        disable = { "html" }
    },
    autotag = { enable = true, },
})

-- Indent blank line
require("ibl").setup {}

require('treesitter-context').setup({
    enable = true,
    disable = { "css" },
    max_lines = 4,
})

require 'nvim-treesitter.configs'.setup {
    autotag = {
        enable = true,
    }
}

-- Rainbow pairs
vim.cmd([[ autocmd FileType * highlight rainbowcol1 guifg=#ffd700]])
vim.cmd([[ autocmd FileType * highlight rainbowcol2 guifg=#da70d6]])
vim.cmd([[ autocmd FileType * highlight rainbowcol3 guifg=#87cefa]])
vim.cmd([[ autocmd FileType * highlight rainbowcol4 guifg=#ff7b33]])
vim.cmd([[ autocmd FileType * highlight rainbowcol5 guifg=#94ed54]])
vim.cmd([[ autocmd FileType * highlight rainbowcol6 guifg=#ff9797]])
