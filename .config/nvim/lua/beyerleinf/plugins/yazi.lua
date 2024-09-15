return {
	"mikavilpas/yazi.nvim",
	event = "VeryLazy",
	keys = {
		{ "<leader>ee", "<cmd>Yazi<cr>", { desc = "Open Yazi at the current file" } },
		{ "<leader>ew", "<cmd>Yazi cwd<cr>", { desc = "Open Yazi in the cwd" } },
		{ "<C-up>", "<cmd>Yazi toggle<cr>", { desc = "Resume last Yazi session" } },
	},
	opts = {
		open_for_directories = true,
		keymaps = {
			show_help = "<f1>",
		},
	},
}
