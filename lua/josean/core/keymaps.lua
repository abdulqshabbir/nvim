-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

---------------------
-- General Keymaps -------------------

-- use jk to exit insert mode
keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

-- clear search highlights
keymap.set("n", "<leader>es", ":nohl<CR>", { desc = "Clear search highlights" })

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window
keymap.set("n", "<leader>q", "<cmd>q<CR>", { desc = "Quit current window" })

-- vim maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>") -- toggle split window maximization

-- Git Keymaps
keymap.set("n", "<leader>gtb", "<cmd>Gitsigns blame_line<cr>")
keymap.set("n", "<leader>gsh", "<cmd>Gitsigns stage_hunk<cr>")
keymap.set("n", "<leader>gph", "<cmd>Gitsigns preview_hunk<cr>")
keymap.set("n", "<leader>gwd", "<cmd>Gitsigns toggle_word_diff<cr>")

-- Telescope import
keymap.set("n", "<leader>fi", "<cmd>Telescope import<cr>")

-- Javascript interpreter
keymap.set("n", "<leader>repl", "<cmd>CodiNew javascript<cr>")

-- TS organize imports
keymap.set("n", "<leader>oi", "<cmd>OrganizeImports<cr>")

-- barbeque
keymap.set("n", "<leader>l", "<cmd>Barbecue toggle<CR>") -- toggle split window maximization
