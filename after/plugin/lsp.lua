local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(_, bufnr)
    lsp_zero.default_keymaps({buffer = bufnr})
end)

lsp_zero.set_sign_icons({
    error = '✘', -- ""
    warn = '▲',  -- ""
    hint = '⚑',  -- ""
    info = '»'   -- ""
})

lsp_zero.format_on_save({
    format_opts = {
        async = false,
        timeout_ms = 10000,
    }
})

lsp_zero.omnifunc.setup({
  autocomplete = true,
  use_fallback = true,
  update_on_delete = true,
  trigger = '<C-Space>',
})

local config = {
    virtual_text = {
        prefix = '●', -- Could be '■', '▎', 'x'
    },
    -- show signs
    float = {
        source = "always", -- Or "if_many"
    },
    update_in_insert = true,
    underline = true,
    severity_sort = true,
}

vim.diagnostic.config(config)

require('mason').setup({})
require('mason-lspconfig').setup({
    ensure_installed = {
        'lua_ls',
    },
    handlers = {
        lsp_zero.default_setup,
    },
})

