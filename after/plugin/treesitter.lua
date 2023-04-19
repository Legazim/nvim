require('nvim-treesitter.configs').setup({
    ensure_installed = {
        "javascript",
        "typescript",
        "tsx",
        "rust",
        "c",
        "lua",
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
        disable = { "css" },
        additional_vim_regex_highlighting = false,
    },
    autopairs = { enable = true },
    indent = {
        enable = true,
        disable = {
            "python",
        }
    },
    rainbow = {
        enable = true,
    },
    -- autotag = { enable = true, },
    context_commentstring = {
        enable = true,
        config = {
            javascript = {
                __default = '// %s',
                jsx_element = '{/* %s */}',
                jsx_fragment = '{/* %s */}',
                jsx_attribute = '// %s',
                comment = '// %s'
            }
        }
    },
})

require("indent_blankline").setup {
    char = '▏',
    context_char = '▏',
    space_char_blankline = " ",
    show_current_context = true,
    show_current_context_start = true,
}

require("nvim-autopairs").setup()

require('treesitter-context').setup()

vim.cmd([[ autocmd FileType * highlight rainbowcol1 guifg=#ffd700]])
vim.cmd([[ autocmd FileType * highlight rainbowcol2 guifg=#da70d6]])
vim.cmd([[ autocmd FileType * highlight rainbowcol3 guifg=#87cefa]])
vim.cmd([[ autocmd FileType * highlight rainbowcol4 guifg=#ff7b33]])
vim.cmd([[ autocmd FileType * highlight rainbowcol5 guifg=#94ed54]])
vim.cmd([[ autocmd FileType * highlight rainbowcol6 guifg=#ff9797]])
