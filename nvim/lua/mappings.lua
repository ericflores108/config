require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
map("n", "<leader>gpt", ":GPToggle<CR>", { noremap = true, silent = true })
map("n", "<leader>gpe", ":GPExec<CR>", { noremap = true, silent = true })
map("n", "<leader>gpf", ":GPExecFile<CR>", { noremap = true, silent = true })
