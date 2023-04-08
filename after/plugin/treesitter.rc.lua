local sitter = require("nvim-treesitter.configs")

sitter.setup{
	ensure_installed = { "c", "lua", "ruby", "cpp",},

	sync_install = false,

	auto_install = true,

	highlight = {
		enable = true,
	},
	additional_vim_regex_highlighting = true,
}
