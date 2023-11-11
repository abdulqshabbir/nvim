return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		local telescope = require("telescope")
		local actions = require("telescope.actions")

		telescope.setup({
			defaults = {
				ignore_patterns = { "node_modules", ".git", "yarn.lock", "package-lock.json" },
				path_display = { "truncate " },
				mappings = {
					i = {
						["<C-k>"] = actions.move_selection_previous, -- move to prev result
						["<C-j>"] = actions.move_selection_next, -- move to next result
						["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
					},
				},
			},
		})

		telescope.load_extension("fzf")

		-- set keymaps
		local keymap = vim.keymap -- for conciseness

		keymap.set("n", "<leader>p", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })
		keymap.set("n", "<leader>fo", "<cmd>Telescope oldfiles<cr>", { desc = "Fuzzy find recent files" })
		keymap.set("n", "<leader>ff", "<cmd>Telescope live_grep<cr>", { desc = "Find string in cwd" })
		keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", { desc = "Find string under cursor in cwd" })
		keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
		keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags
		keymap.set("n", "<leader>fr", "<cmd>Telescope lsp_references<cr>") -- find all references of variable
		keymap.set("n", "<leader>fi", "<cmd>Telescope lsp_implementations<CR>") -- find all implementations
		keymap.set("n", "<leader>gb", "<cmd>Telescope git_branches<CR>") -- search for git branches
		keymap.set("n", "<leader>gc", "<cmd>Telescope git_commits<CR>") -- search for git commits
		keymap.set("n", "<leader>gs", "<cmd>Telescope git_stash<CR>") -- search for git stashes
	end,
}
