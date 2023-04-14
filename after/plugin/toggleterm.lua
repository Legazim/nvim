-- require("toggleterm").setup()

require("toggleterm").setup {
    size = 22,
    open_mapping = [[<C-c>]],
    shell = vim.fn.executable "pwsh" == 1 and "pwsh" or "powershell",
    -- let &shell = has('win32') ? 'powershell' : 'pwsh'
    hide_numbers = true,    -- hide the number column in toggleterm buffers
    shade_filetypes = {},
    shade_terminals = true, -- NOTE: this option takes priority over highlights specified so if you specify Normal highlights you should set this to false
    start_in_insert = true,
    insert_mappings = true, -- whether or not the open mapping applies in insert mode
    terminal_mappings = true, -- whether or not the open mapping applies in the opened terminals
    persist_size = true,
    direction = 'float',    -- 'vertical' | 'horizontal' | 'tab' | 'float'
    close_on_exit = true,   -- close the terminal window when the process exits
    float_opts = {
        border = 'curved',  -- 'single' | 'double' | 'shadow' | 'curved'
        winblend = 3,
    }
}

function _G.set_terminal_keymaps()
    local opts = { noremap = true }
    vim.api.nvim_buf_set_keymap(0, 't', '<esc>', [[<C-\><C-n>]], opts)
    vim.api.nvim_buf_set_keymap(0, 't', 'jk', [[<C-\><C-n>]], opts)
end

-- if you only want these mappings for toggle term use term://*toggleterm#* instead
vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')
