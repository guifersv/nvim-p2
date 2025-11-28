-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set

map("i", "jk", "<Esc>")

map("n", "<leader>jn", function()
  require("jdtls").test_nearest_method()
end, { desc = "Java run nearest test" })

map("n", "<leader>jc", function()
  require("jdtls").test_class()
end, { desc = "Java run test class" })
