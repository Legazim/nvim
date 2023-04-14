require('illuminate').configure({
    -- providers: provider used to get references in the buffer, ordered by priority
    providers = {
        'lsp',
        'treesitter',
        'regex',
    },
    filetypes_denylist = {
        'dirvish',
        'fugitive',
        'nerdtree',
        'netrw',
        'html'
    },
})
