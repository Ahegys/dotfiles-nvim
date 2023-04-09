local term = require("nvterm")

term.setup({
		shell = 'zsh',
})

local terminal = require("nvterm.terminal")

local toggle = {'n', 't'}

local mappings = {
	{ toggle, "<A-h>", function () terminal.toggle("horizontal") end },
	{ toggle, "<A-v>", function () terminal.toggle("vertical") end },
	{ toggle, "<A-i>", function () terminal.toggle("float") end },
}

local opts = { noremap = true, silent = true }
for _, mapping in ipairs(mappings) do
	vim.keymap.set(mapping[1], mapping[2], mapping[3], opts)
end
