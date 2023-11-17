-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

---------------------
-- General Keymaps -------------------

-- use jk to exit insert mode
keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

-- clear search highlights
keymap.set("n", "<leader>es", ":nohl<CR>", { desc = "Clear search highlights" })

-- delete single character without copying into register
-- keymap.set("n", "x", '"_x')

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window
keymap.set("n", "<leader>q", "<cmd>q<CR>", { desc = "Quit current window" })

-- tab management
keymap.set("n", "<leader>n", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>w", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") --  go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") --  go to previous tab

-- vim maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>") -- toggle split window maximization

-- nvim-tree
keymap.set("n", "<leader>b", ":NvimTreeToggle<CR>") -- toggle split window maximization

-- Toggle Terminal
keymap.set("n", "<leader>tn", "<cmd>ToggleTerm<cr>")
keymap.set("n", "<leader>tt", "<cmd>ToggleTermToggleAll<cr>")

keymap.set("n", "<leader>gtb", "<cmd>Gitsigns blame_line<cr>")
keymap.set("n", "<leader>gsh", "<cmd>Gitsigns stage_hunk<cr>")
keymap.set("n", "<leader>gph", "<cmd>Gitsigns preview_hunk<cr>")
keymap.set("n", "<leader>gwd", "<cmd>Gitsigns toggle_word_diff<cr>")

-- terminal integration
function _G.set_terminal_keymaps()
	local opts = { buffer = 0 }
	vim.keymap.set("t", "<esc>", [[<C-\><C-n>]], opts)
	vim.keymap.set("t", "jk", [[<C-\><C-n>]], opts)
	vim.keymap.set("t", "<C-h>", [[<Cmd>wincmd h<CR>]], opts)
	vim.keymap.set("t", "<C-j>", [[<Cmd>wincmd j<CR>]], opts)
	vim.keymap.set("t", "<C-k>", [[<Cmd>wincmd k<CR>]], opts)
	vim.keymap.set("t", "<C-l>", [[<Cmd>wincmd l<CR>]], opts)
	vim.keymap.set("t", "<C-w>", [[<C-\><C-n><C-w>]], opts)
end

vim.cmd("autocmd! TermOpen term://*toggleterm#* lua set_terminal_keymaps()")

-- TS organize imports
keymap.set("n", "<leader>oi", "<cmd>OrganizeImports<cr>")

-- barbeque
keymap.set("n", "<leader>l", "<cmd>Barbecue toggle<CR>") -- toggle split window maximization
