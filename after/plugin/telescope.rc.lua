local builtin = require("telescope.builtin")
local key = vim.keymap.set

key('n', '<leader>fb', builtin.buffers, {})
key('n', '<leader>fg', builtin.live_grep, {})
key('n', '<leader>fn', builtin.help_tags, {})
key('n', '<leader>ff', builtin.find_files, {})


local tele = require("telescope")

tele.setup{
	defaults = {
		layout_config = {
			vertical = { width = 1 }
		}
	},
	pickers = {
		find_files = {
			theme = "dropdown",
			winblend = 20,
		},
		buffers = { theme = "dropdown", winblend = 20 },
		live_grep = { theme = "dropdown", winblend = 20},
		help_tags = { theme = "dropdown" , winblend = 20},
	},
}
