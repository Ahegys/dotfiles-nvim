require "core.base"
require "core.maps"
require "core.lazy"

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.g.polyglot_disable = "autoindent"
vim.opt.rtp:prepend(lazypath)
vim.cmd "colorscheme onedark_vivid"
