local notify = require("notify")

notify.setup({
	stages = 'fade',
	background_colour = 'FloatShadow',
	timeout = 3000,
})

vim.notify = require("notify")
