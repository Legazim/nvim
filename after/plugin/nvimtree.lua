local status_ok, lualine = pcall(require, "nvim-tree")
if not status_ok then
    return
end

vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

local opts = { noremap = true, silent = true }

lualine.setup({
    filters = {
        dotfiles = false,
    },
    view = {
        adaptive_size = true,
        mappings = {
            list = {
                { key = "u",         action = "dir_up" },
                { key = "<leader>v", action = "vsplit" },
                { key = "<leader>x", action = "split" },
            },
        },
    },
    sort_by = "case_sensitive",
    renderer = {
        group_empty = true,
        indent_markers = {
            enable = true,
            icons = {
                corner = "└",
                edge = "│",
                item = "│",
                bottom = "─",
                none = " ",
            },
        },
    },
    diagnostics = {
        enable = true,
        show_on_dirs = true,
    },
    sync_root_with_cwd = true,
    respect_buf_cwd = true,
    update_focused_file = {
        enable = true,
        update_root = true
    },
})
