local status, pair = pcall(require, 'nvim-autopairs')
if not status then return end

pair.setup{
	disable_filetype = { 'TelescopePrompt', 'vim' }
}

local status, tags = pcall(require, 'nvim-ts-autotag')
if not status then return end

tags.setup{}
