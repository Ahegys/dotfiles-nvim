local line = require("bufferline")

line.setup{
	options = {
		mode = "buffers",
		themable = true,
		close_command = "bdelete! %d",
		right_mouse_command = "bdelete! %d",
		left_mouse_command = "buffer %d",
		indicator = {
			icons = "| ",
			style = 'icon',
		},
		buffer_close_icon = "X",
		modified_icon = "o",
		tab_size = 18,
		diagnostics = "nvim_lsp",
		diagnostics_update_in_insert = true,
		diagnostics_indicator = function(count, level, diagnostics_dict, context)
			return "("..count..")"
		end,
		show_buffer_icons = true,
		show_close_icon = true,
		show_duplicate_prefix = true,
		separator_style = "shope",
		always_show_bufferline = true,
		hover = {
			enabled = true,
			delay = 200,
			reveal = { 'close' },
		},

	},
}
