local status, lsp = pcall(require, "lspconfig")
if not status then return end

local protocol = require("vim.lsp.protocol")
local on_attach = function(client, bufnr)
	-- Formmating
	if client.server_capabilities.documentFormattingProvider then
		vim.api.nvim_command [[augroup Format]]
		vim.api.nvim_command [[autocmd! * <buffer>]]
		vim.api.nvim_command [[augroup END]]
	end
end

-- Ruby lspconfig
lsp.solargraph.setup{
	cmd = { "solargraph", "stdio" },
	filestypes = { "ruby" },
	init_options = { formatting = true },
	settings = {
		solargraph = {
			diagnostics = true
		}
	}
}
-- Lua lspconfig
lsp.lua_ls.setup{
	on_attach = on_attach,
	cmd = { "lua-language-server" },
	filetypes = { "lua" },

	settings = {
		Lua = { runtime = { version = "LuaJIT" },
		diagnostics = { globals = { "vim" } },
		workspace = {
				library = vim.api.nvim_get_runtime_file("", true),
				checkThirdParty = false
			},
			telemetry = { enable = false },
		},
	},
}
