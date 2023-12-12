local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
    'nvim-lua/plenary.nvim', -- Usefull functions

    -- Treesitter
    'nvim-treesitter/playground', 

    -- Navigation
    'nvim-telescope/telescope.nvim', -- Telescope

    -- Visual
    { 'catppuccin/nvim', lazy = false }, -- Colorscheme
    'folke/which-key.nvim',
    'nvim-tree/nvim-web-devicons', 
    'nvim-lualine/lualine.nvim',
    'RRethy/vim-illuminate',

    -- Shortcuts
    'kylechui/nvim-surround',
    'theprimeagen/harpoon',
    'numToStr/Comment.nvim',
    'akinsho/toggleterm.nvim',

    'mbbill/undotree', -- Undo tree

    -- Git integration
    'tpope/vim-fugitive',
    'lewis6991/gitsigns.nvim',

    -- LSP extras
    'folke/trouble.nvim',
    {
        "utilyre/barbecue.nvim",
        dependencies = { "SmiteshP/nvim-navic", }
    },

    -- LSP
    {'williamboman/mason.nvim'},
    {'williamboman/mason-lspconfig.nvim'},

    {'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
    {'neovim/nvim-lspconfig'},
    {'hrsh7th/cmp-nvim-lsp'},
    {'hrsh7th/nvim-cmp'},
    {'L3MON4D3/LuaSnip'},

    -- Treesitter
    'nvim-treesitter/nvim-treesitter',
    'JoosepAlviste/nvim-ts-context-commentstring', -- Support for embedded languages in files,
    'nvim-treesitter/nvim-treesitter-context',     -- Sticky header
    'p00f/nvim-ts-rainbow',                        -- Backets pairs
    'lukas-reineke/indent-blankline.nvim',         -- indent lines
    'windwp/nvim-autopairs',                       -- Autopairs, integrates with both cmp and treesitter
    'windwp/nvim-ts-autotag',                      -- Automatically end & rename tagsr
}

local opts = {}

require('lazy').setup(plugins, opts)
