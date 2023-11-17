require('bufferline').setup({
    options = {
        separator_style = 'thin',
        diagnostics = 'nvim_lsp',
        diagnostics_indicator = function(count, level)
            local icon = level:match("error") and " " or " "
            return ' ' .. icon .. count
        end,
        numbers = 'ordinal',
        offsets = {
            {
                filetype = "NvimTree",
                text = "File Explorer",
                highlight = "Directory",
                separator = true -- use a "true" to enable the default, or set your own character
            }
        },
    }
})

vim.keymap.set('n', '<leader>bp', ':BufferLineTogglePin<cr>', { silent = true })
