local packer = require("packer")

local function plugins(use)
	use "wbthomason/packer.nvim"
	use "folke/lazy.nvim"
end

packer.startup(plugins)
