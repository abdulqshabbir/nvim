-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

---------------------
-- General Keymaps -------------------
-- centering on jumps
keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")
keymap.set("n", "J", "mzJ`z")
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")
keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")

-- move lines up and down
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- use jk to exit insert mode
keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

-- clear search highlights
keymap.set("n", "<leader>es", ":nohl<CR>", { desc = "Clear search highlights" })
keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Up fast and center" })
keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Down fast and center" })

-- window management
keymap.set("n", "<leader>qq", "<cmd>q<CR>", { desc = "Quit current window" })
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window
keymap.set("n", "<leader>sj", "<C-w>-") -- make split window height shorter
keymap.set("n", "<leader>sk", "<C-w>+") -- make split windows height taller
keymap.set("n", "<leader>sh", "<C-w>>5") -- make split windows width bigger
keymap.set("n", "<leader>sl", "<C-w><5") -- make split windows width smaller
keymap.set("n", ";;", "<cmd>close<CR>", { desc = "Close pane" })

-- generzal saving/closing keymaps
keymap.set("n", ";j", "<cmd>w<CR>", { desc = "Close pane" })
keymap.set("n", ";a", "<cmd>wa<CR>", { desc = "Close pane" })
keymap.set("n", ";q", "<cmd>wqa<CR>", { desc = "Close pane" })

-- vim maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>") -- toggle split window maximization

-- Git Keymaps
keymap.set("n", "<leader>gtb", "<cmd>Gitsigns blame_line<cr>")
keymap.set("n", "<leader>gsh", "<cmd>Gitsigns stage_hunk<cr>")
keymap.set("n", "<leader>gph", "<cmd>Gitsigns preview_hunk<cr>")
keymap.set("n", "<leader>gwd", "<cmd>Gitsigns toggle_word_diff<cr>")
keymap.set("n", "<leader>gn", "]c") -- next diff hunk
keymap.set("n", "<leader>gp", "[c") -- previous diff hunk

-- Quickfix keymaps
keymap.set("n", "<leader>qn", ":cnext<CR>") -- jump to next quickfix list item
keymap.set("n", "<C-n>", ":cnext<CR>zz") -- jump to next quickfix list item
keymap.set("n", "<leader>qp", ":cprev<CR>") -- jump to prev quickfix list item
keymap.set("n", "<C-p>", ":cprev<CR>zz") -- jump to prev quickfix list item

-- Telescope import
keymap.set("n", "<leader>fi", "<cmd>Telescope import<cr>")

-- Javascript interpreter
keymap.set("n", "<leader>repl", "<cmd>CodiNew javascript<cr>")

-- TS organize imports
keymap.set("n", "<leader>oi", "<cmd>OrganizeImports<cr>")

-- barbeque
keymap.set("n", "<leader>l", "<cmd>Barbecue toggle<CR>") -- toggle split window maximization

-- Nvim-dap
-- keymap.set("n", "<leader>bb", "<cmd>lua require'dap'.toggle_breakpoint()<cr>")
-- keymap.set("n", "<leader>bc", "<cmd>lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<cr>")
-- keymap.set("n", "<leader>bl", "<cmd>lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<cr>")
-- keymap.set("n", "<leader>br", "<cmd>lua require'dap'.clear_breakpoints()<cr>")
-- keymap.set("n", "<leader>ba", "<cmd>Telescope dap list_breakpoints<cr>")
keymap.set("n", "<leader>dc", "<cmd>lua require'dap'.continue()<cr>")
keymap.set("n", "<leader>dj", "<cmd>lua require'dap'.step_over()<cr>")
keymap.set("n", "<leader>dk", "<cmd>lua require'dap'.step_into()<cr>")
keymap.set("n", "<leader>do", "<cmd>lua require'dap'.step_out()<cr>")
keymap.set("n", "<leader>dd", function()
	require("dap").disconnect()
	require("dapui").close()
end)
keymap.set("n", "<leader>dt", function()
	require("dap").terminate()
	require("dapui").close()
end)
keymap.set("n", "<leader>dr", "<cmd>lua require'dap'.repl.toggle()<cr>")
keymap.set("n", "<leader>dl", "<cmd>lua require'dap'.run_last()<cr>")
keymap.set("n", "<leader>di", function()
	require("dap.ui.widgets").hover()
end)
keymap.set("n", "<leader>d?", function()
	local widgets = require("dap.ui.widgets")
	widgets.centered_float(widgets.scopes)
end)
keymap.set("n", "<leader>df", "<cmd>Telescope dap frames<cr>")
keymap.set("n", "<leader>dh", "<cmd>Telescope dap commands<cr>")
keymap.set("n", "<leader>de", function()
	require("telescope.builtin").diagnostics({ default_text = ":E:" })
end)
