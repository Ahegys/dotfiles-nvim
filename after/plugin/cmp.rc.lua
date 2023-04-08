local status, cmp = pcall(require, "cmp")
if not status then return end
local kind = require("lspkind")

cmp.setup({
	formatting = {
		format = kind.cmp_format({
			mode = 'symbol',
			maxwidth = 50,
			ellipsis_char = '...',

			before = function(entry, vim_item)
				return vim_item
			end
		})
	},
	snippet = {
		expand = function(args)
			require("luasnip").lsp_expand(args.body)
		end,
	},
	window = {
		completion = cmp.config.window.bordered(),
		documentation = cmp.config.window.bordered(),
	},
	mapping = cmp.mapping.preset.insert({
		['<CR>'] = cmp.mapping.confirm({
			behavior = cmp.ConfirmBehavior.Replace,
			select = true}),
		['<C-space>'] = cmp.mapping.complete(),
		['<C-k>'] = cmp.mapping.scroll_docs(4),
		['<C-j>'] = cmp.mapping.scroll_docs(-4),
	}),
	sources = cmp.config.sources({
		{ name = 'nvim_lsp' },
		{ name = 'buffer' },
	}),
	sorting = {
		sorting = {
        comparators = {
            cmp.config.compare.offset,
            cmp.config.compare.exact,
            cmp.config.compare.recently_used,
            require("clangd_extensions.cmp_scores"),
            cmp.config.compare.kind,
            cmp.config.compare.sort_text,
            cmp.config.compare.length,
            cmp.config.compare.order,
        },
    },
	}
})

vim.cmd [[
	set completeopt=menuone,noinsert,noselect
	highlight! default link CmpItemKind CmpItemMenuDefault
]]
