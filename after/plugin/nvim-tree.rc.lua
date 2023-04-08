vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

local status, ntree = pcall(require, "nvim-tree")
if not status then return end

ntree.setup({
	sort_by = "case_sensitive",
	renderer = { group_empty = true },
	filters = { dotfiles = true },
})
