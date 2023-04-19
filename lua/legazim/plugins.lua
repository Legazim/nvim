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
    'nvim-treesitter/playground',
    'nvim-telescope/telescope.nvim',
    'nvim-lua/plenary.nvim',
    { 'catppuccin/nvim', lazy = false }, -- Colorscheme
    'kylechui/nvim-surround',
    'theprimeagen/harpoon',
    'mbbill/undotree',
    'lewis6991/gitsigns.nvim',
    'tpope/vim-fugitive',
    'folke/which-key.nvim',
    'numToStr/Comment.nvim',
    'akinsho/toggleterm.nvim',
    'nvim-tree/nvim-web-devicons',
    'nvim-lualine/lualine.nvim',
    'akinsho/bufferline.nvim',
    'folke/trouble.nvim',
    'RRethy/vim-illuminate',
    {
        "utilyre/barbecue.nvim",
        dependencies = { "SmiteshP/nvim-navic", }
    },
    {
        'VonHeikemen/lsp-zero.nvim',
        dependencies = {
            { 'neovim/nvim-lspconfig' }, -- Required
            {
                'williamboman/mason.nvim',
                init = function()
                    pcall(vim.cmd, 'MasonUpdate')
                end,
            },
            { 'williamboman/mason-lspconfig.nvim' }, -- Optional

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },     -- Required
            { 'hrsh7th/cmp-nvim-lsp' }, -- Required
            { 'L3MON4D3/LuaSnip' },     -- Required
        }
    },

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
