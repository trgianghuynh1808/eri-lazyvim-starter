-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- increment/decrement
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- delete a word backward
-- keymap.set("n", "dw", "<vb_d>")

-- select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- exit mode
keymap.set("i", "jk", "<ESC>", opts)

-- rename IncRename
keymap.set("n", "<leader>rn", ":IncRename ")

-- open LazyGit
keymap.set("n", "<leader>gg", ":LazyGit<CR>")

-- diagnostics
keymap.set("n", "<C-j", function()
  vim.diagnostics.goto_next()
end, opts)

-- change keymap Github Copilot
vim.g.copilot_no_tab_map = true
vim.api.nvim_set_keymap("i", "<C-J>", 'copilot#Accept("<CR>")', { silent = true, expr = true })

-- DBUI excute query
--[[ vim.keymap.set("n", "<leader>de", ":normal vip<CR><PLUG>(DBUI_ExecuteQuery)", { desc = "Execute DB query" }) ]]
