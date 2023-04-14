function ColorMyPencils(color)
    color = color or "catppuccin"

    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

    require('catppuccin').setup({
        transparent_background = true,
        integrations = {
            cmp = true,
            telescope = true,
            gitsigns = true,
            which_key = true,
            -- notify = false,
            -- mini = false,
            -- nvimtree = true,
            -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
            native_lsp = {
                enabled = true,
                virtual_text = {
                    errors = { "italic" },
                    hints = { "italic" },
                    warnings = { "italic" },
                    information = { "italic" },
                },
                underlines = {
                    errors = { "underline" },
                    hints = { "underline" },
                    warnings = { "underline" },
                    information = { "underline" },
                },
            },
        },
    })

    vim.cmd.colorscheme(color)
end

ColorMyPencils()
