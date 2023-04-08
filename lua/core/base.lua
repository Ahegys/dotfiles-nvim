	-- Basic Neovim settings
local options = {
-- UI settings
	termguicolors = true, -- Enables use of colors in the terminal
	mouse = "a", -- Enables mouse usage in normal and visual mode
	number = true, -- Shows line numbers
	relativenumber = true, -- Shows relative line numbers
	wrap = false, -- Disables line wrapping
	cursorline = true, -- Highlights the line under the cursor
	signcolumn = "yes", -- Always shows the sign column
	splitright = true, -- Opens splits to the right
	splitbelow = true, -- Opens splits below
	clipboard = "unnamedplus", -- Allows copying to the system clipboard
-- Editor settings
	expandtab = false, -- Converts tabs to spaces
	tabstop = 2, -- Sets the size of a tab
	shiftwidth = 2, -- Sets the size of an indentation
	smartindent = true, -- Automatically indents
	undofile = true, -- Enables persistent undo
	incsearch = true, -- Enables incremental search
	ignorecase = true, -- Ignores case when searching
	smartcase = true, -- Ignores case if the search query is all lowercase
}
vim.o.inccommand = "split"
-- Applies the settings
for k, v in pairs(options) do
vim.opt[k] = v
end

