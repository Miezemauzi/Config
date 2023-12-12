-- This resets the maps leader
vim.g.mapleader = " "

-- This compiles latex
--vim.keymap.set('n', "<leader>cp",:pdflatex %)

-- This set it so that a init.vim and a init.lua file can coexist
local vimrc = vim.fn.stdpath("config") .. "/vimrc.vim"
vim.cmd.source(vimrc)

-- This allows other things needed in the vimrc to be placed into this file

-- This configures the lazy plugin manager
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
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins")

--Lua snip
require("luasnip").config.set_config({ -- Setting LuaSnip config

	-- Enable autotriggered snippet
	enable_autosnippets = true,

	-- Use Tab (or some other key if you prefer) to trigger visual selection
	store_selection_keys = "<Tab>",
})

-- Load all snippets from the nvim/LuaSnip directory at startup
require("luasnip.loaders.from_lua").load({ paths = "~/.config/nvim/Luasnip/" })

--Leap
require("leap").add_default_mappings()

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true


vim.opt.undofile = true

vim.opt.scrolloff = 8
