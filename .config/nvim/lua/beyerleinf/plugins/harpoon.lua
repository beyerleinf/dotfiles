return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	event = "VeryLazy",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-telescope/telescope.nvim",
	},
	config = function()
		local harpoon = require("harpoon")
		harpoon.setup({})

		local telescope_conf = require("telescope.config").values
		local function toggle_telescope(harpoon_files)
			local function make_finder()
				local file_paths = {}

				for _, item in pairs(harpoon_files.items) do
					table.insert(file_paths, item.value)
				end

				return require("telescope.finders").new_table({
					results = file_paths,
				})
			end

			require("telescope.pickers")
				.new({}, {
					prompt_title = "Harpoon",
					-- finder = require("telescope.finders").new_table({
					-- 	results = file_paths,
					-- }),
					finder = make_finder(),
					previewer = telescope_conf.file_previewer({}),
					sorter = telescope_conf.generic_sorter({}),
					attach_mappings = function(prompt_buffer_number, map)
						map("i", "<C-d>", function()
							local state = require("telescope.actions.state")
							local selected_entry = state.get_selected_entry()
							local current_picker = state.get_current_picker(prompt_buffer_number)

							harpoon:list():remove(selected_entry)
							current_picker:refresh(make_finder())
						end)

						return true
					end,
				})
				:find()
		end

		local keymap = vim.keymap

		keymap.set("n", "<leader>a", function()
			harpoon:list():add()
		end, { desc = "Add current buffer to Harpoon" })
		keymap.set("n", "<C-e>", function()
			toggle_telescope(harpoon:list())
		end, { desc = "Open Harpoon" })
	end,
}
