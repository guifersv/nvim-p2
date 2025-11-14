-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.opt.relativenumber = true
vim.o.swapfile = false
vim.g.doge_mapping = "<leader>jd"
vim.g.vimspector_sidebar_width = 0
vim.g.vimspector_bottombar_height = 0
vim.g.vimspector_enable_winbar = 1
vim.g.coc_global_extensions = { "coc-java", "coc-java-debug" }
