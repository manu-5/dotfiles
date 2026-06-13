return {
	{
		"nvim-telescope/telescope.nvim", tag = "0.1.8",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-telescope/telescope-ui-select.nvim",
		},
		config = function()
			local builtin = require("telescope.builtin")

			require("telescope").setup({
				defaults = {
					vimgrep_arguments = {
						"rg",
						"--color=never",
						"--no-heading",
						"--with-filename",
						"--line-number",
						"--column",
						"--smart-case",
						"--no-messages",
					},
				},
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown {}
					}
				}
			})
			require("telescope").load_extension("ui-select")

			vim.keymap.set("n", "<C-p>", builtin.find_files, {})
			vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
		end
	},
}
