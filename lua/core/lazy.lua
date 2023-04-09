local lazy = require("lazy")

lazy.setup({
	{"hrsh7th/nvim-cmp"},
	{"hrsh7th/cmp-path"},
	{"L3MON4D3/LuaSnip"},
	{"BurntSushi/ripgrep"},
	{"hrsh7th/cmp-buffer"},
	{"sheerun/vim-polyglot"},
	{"rcarriga/nvim-notify"},
	{"hrsh7th/cmp-nvim-lsp"},
	{"onsails/lspkind.nvim"},
	{"Mofiqul/dracula.nvim"},
	{"neovim/nvim-lspconfig"},
	{"windwp/nvim-autopairs"},
	{"windwp/nvim-ts-autotag"},
	{"williamboman/mason.nvim"},
	{"p00f/clangd_extensions.nvim"},
	{"lukas-reineke/indent-blankline.nvim"},
	{"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
	{"nvim-telescope/telescope.nvim", dependencies = "nvim-lua/plenary.nvim"},
	{'romgrk/barbar.nvim', dependencies = 'nvim-tree/nvim-web-devicons'},
	{"NvChad/nvterm"},
	{
  "nvim-neotest/neotest",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
    "antoinemadec/FixCursorHold.nvim"
 	 }
	},
	{"glepnir/lspsaga.nvim",
		event = "LspAttach",
		config = function()
			require("lspsaga").setup({
				symbol_in_winbar = {
					enable = true,
					separator = "  ",
					show_file = true,
					folder_level = true,
					respect_root = true,
					color_mode = true,
				},
				ui = {
					title = true,
					border = "rounded",
					winblen = 20,
					incoming = " ",
					outgoing = " ",
					expand = " ",
					collapse = " ",
					hover = ' ',
					code_action = "💡",
					kind = {},
				}
			})
		end,
		dependencies = {
			{"nvim-tree/nvim-web-devicons"},
			{"nvim-treesitter/nvim-treesitter"}
		}
	},
	{
  "nvim-neo-tree/neo-tree.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    }
  },
	-- Themes
	{"kyoz/purify"}, -- colorscheme purify
	{"kabbamine/yowish.vim"}, -- colorscheme yowish
	{"adrian5/oceanic-next-vim"}, -- colorscheme oceanicnext
	{"liuchengxu/space-vim-dark"}, -- colorscheme space-vim-dark
	{"dunstontc/vim-vscode-theme"}, -- colorscheme dark-plus
	{"liuchengxu/space-vim-theme"}, -- colorscheme space-vim-theme
	{"marciomazza/vim-brogrammer-theme"}, -- colorscheme brogrammer
	{"olimorris/onedarkpro.nvim", priority = 1000, config = function() require("onedarkpro").setup({options = { transparency = true }})end}, -- colorscheme onedark, onedark_vivid
})
