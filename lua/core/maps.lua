vim.g.mapleader = " "

local my_keymaps = {
  { 'n', '+', '<C-a>' },
  { 'n', '-', '<C-x>' },
  { 'n', 'dw', 'vb"_d' },
  { '', 'sh', '<C-w>h' },
  { '', 'sk', '<C-w>k' },
  { '', 'sj', '<C-w>j' },
  { '', 'sl', '<C-w>l' },
  { '', 's<up>', '<C-w>j' },
  { '', 's<down>', '<C-w>k' },
  { '', 's<left>', '<C-w>h' },
  { '', '<Space>', '<C-w>w' },
  { '', 's<right>', '<C-w>l' },
  { 'n', '<C-a>', 'gg<S-v>G' },
  { 'n', '<C-w><up>', '<C-w>+' },
  { 'n', '<C-w><left>', '<C-w><' },
  { 'n', '<C-w><down>', '<C-w>-' },
  { 'n', '<C-w><right>', '<C-w>>' },
  { '', '<Space>hh', ':Stdheader<Cr>' },
  { '', 'sw', ':ClangdSwitchSourceHeader<Cr>' },
  { 'n', 'tq', ':tabclose<Cr>', { silent = true } },
  { 'n', 'te', ':tabedit<Return>', { silent = true } },
  { 'n', 'ss', ':split<Return><C-w>w', { silent = true } },
  { 'n', 'sv', ':vsplit<Return><C-w>w', { silent = true } },
	{ 'n', '<space>e', ':NeoTreeFocusToggle<CR>', { silent = true } },
	-- LspSaga Keymaps
	{'n', "rn", "<cmd>Lspsaga rename<CR>"},
	{'n', "gh", "<cmd>Lspsaga lsp_finder<CR>"},
	{'n', "<leader>p", "<cmd>Lspsaga peek_definition<CR>"},
	{'n', "<leader>gp", "<cmd>Lspsaga goto_definition<CR>"},
	{'n', "<leader>ar", "<cmd>Lspsaga rename ++project<CR>"},
	{'n', "<leader>ca","<cmd>Lspsaga code_action<CR>"},

}

for _, mapping in ipairs(my_keymaps) do
  local mode, keys, command, options = unpack(mapping)
  vim.api.nvim_set_keymap(mode, keys, command, options or {})
end
