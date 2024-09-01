return {
	"lewis6991/gitsigns.nvim",
	event = { "BufReadPre", "BufNewFile" },
	opts = {
		on_attach = function(bufnr)
			local gs = require("gitsigns")

			local keymap = vim.keymap

			keymap.set("n", "[h", gs.prev_hunk, { desc = "Previous hunk", buffer = bufnr })
			keymap.set("n", "]h", gs.next_hunk, { desc = "Next hunk", buffer = bufnr })

			keymap.set("n", "<leader>hs", gs.stage_hunk, { desc = "Stage hunk", buffer = bufnr })
			keymap.set("n", "<leader>hr", gs.reset_hunk, { desc = "Reset hunk", buffer = bufnr })
			keymap.set("v", "<leader>hs", function()
				gs.stage_hunk({ vim.fn.line("."), vim.fn.line("v") })
			end, { desc = "Stage hunk", buffer = bufnr })
			keymap.set("v", "<leader>rh", function()
				gs.reset_hunk({ vim.fn.line("."), vim.fn.line("v") })
			end, { desc = "Reset hunk", buffer = bufnr })

			keymap.set("n", "<leader>hS", gs.stage_buffer, { desc = "Stage buffer", buffer = bufnr })
			keymap.set("n", "<leader>hR", gs.reset_buffer, { desc = "Reset buffer", buffer = bufnr })
			-- keymap.set("n", "<leader>hU", gs.unstage_file, { desc = "Unstage file", buffer = bufnr })

			keymap.set("n", "<leader>hu", gs.undo_stage_hunk, { desc = "Undo stage hunk", buffer = bufnr })
			keymap.set("n", "<leader>hp", gs.preview_hunk, { desc = "Preview hunk", buffer = bufnr })

			keymap.set("n", "<leader>bl", function()
				gs.blame_line({ full = true })
			end, { desc = "Blame line", buffer = bufnr })
			keymap.set("n", "<leader>bL", gs.toggle_current_line_blame, { desc = "Toggle line blame", buffer = bufnr })

			keymap.set("n", "<leader>hd", gs.diffthis, { desc = "Diff this", buffer = bufnr })
			keymap.set("n", "<leader>hD", function()
				gs.diffthis("~")
			end, { desc = "Diff this ~", buffer = bufnr })

			keymap.set(
				{ "o", "x" },
				"ih",
				":<C-U>Gitsigns select_hunk<cr>",
				{ desc = "Gitsigns select hunk", buffer = bufnr }
			)
		end,
	},
}
