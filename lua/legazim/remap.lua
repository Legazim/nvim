vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Move line up and down in NORMAL and VISUAL modes
vim.keymap.set('n', '<M-j>', ':move .+1<CR>')
vim.keymap.set('n', '<M-k>', ':move .-2<CR>')
vim.keymap.set('x', '<M-j>', ":move '>+1<CR>gv=gv")
vim.keymap.set('x', '<M-k>', ":move '<-2<CR>gv=gv")

-- Reduce motion sickness
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Shortcut to normal mode
vim.keymap.set('i', 'jk', '<ESC>')
vim.keymap.set('i', 'kj', '<ESC>')

-- Clipboard problems
vim.keymap.set("x", "<leader>p", [["_dP]])
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- Better tabbing
vim.keymap.set('n', '<Tab>', '>>')
vim.keymap.set('n', '<S-Tab>', '<<')
vim.keymap.set('n', '<leader><', '<<')
vim.keymap.set('n', '<leader>>', '>>')
vim.keymap.set('v', '<Tab>', '>gv')
vim.keymap.set('v', '<S-Tab>', '<gv')
vim.keymap.set('v', '>', '>gv')
vim.keymap.set('v', '<', '<gv')

-- Format
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- Don't leave normal mode
vim.keymap.set("n", '<leader>o', 'o<ESC>')
vim.keymap.set("n", '<leader>O', 'O<ESC>')

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/AppData/Local/nvim/lua/legazim/packer.lua<CR>");

-- Use Alt + hjkl to resize windows
vim.keymap.set('n', '<M-Down>', ':resize -2<CR>')
vim.keymap.set('n', '<M-Up>', ':resize +2<CR>')
vim.keymap.set('n', '<M-Right>', ':vertical resize +2<CR>')
vim.keymap.set('n', '<M-Left>', ':vertical resize -2<CR>')

-- Better window navigation
vim.keymap.set('n', '<C-h>', '<C-w>h')
vim.keymap.set('n', '<C-j>', '<C-w>j')
vim.keymap.set('n', '<C-k>', '<C-w>k')
vim.keymap.set('n', '<C-l>', '<C-w>l')

-- Buffer navigation
vim.keymap.set('n', '<m-l>', ':bn<Cr>')
vim.keymap.set('n', '<m-h>', ':bp<Cr>')

vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)

-- Fix problem where <C-z> freezes the terminal (in windows powershell)
local function CtrlZ()
    if vim.fn.has('win32') then
        return '<nop>'
    else
        return '<C-z>'
    end
end
vim.keymap.set('', '<C-z>', CtrlZ())
