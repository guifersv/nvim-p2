-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set

map("n", "<leader>js", function()
  local file = vim.fn.expand("%:t")
  Snacks.terminal(
    "python dirlididi.py submit " .. vim.g.idquestao .. " " .. vim.g.meutoken .. " " .. file,
    { cwd = LazyVim.root(), auto_close = false }
  )
end, { desc = "Java Dirlididi code submit" })

vim.keymap.set("n", "<Leader>jd", "<Plug>(doge-generate)", { desc = "Java Generate documatation" })

vim.api.nvim_create_user_command("SetId", function(opts)
  vim.g.idquestao = opts.args
end, {
  nargs = 1,
})

vim.api.nvim_create_user_command("SetToken", function(opts)
  vim.g.meutoken = opts.args
end, {
  nargs = 1,
})

-- Debugger

map("n", "<leader>dt", function()
  require("dap").toggle_breakpoint()
end, { desc = "Dap Toggle Breakpoint" })

map("n", "<leader>dc", function()
  require("dap").continue()
end, { desc = "Dap Continue" })

map("n", "<leader>di", function()
  require("dap").step_into()
end, { desc = "Dap Step Into" })

map("n", "<leader>do", function()
  require("dap").step_over()
end, { desc = "Dap Step Over" })

map("n", "<leader>ds", function()
  require("dap").step_out()
end, { desc = "Dap Step Out" })

map("n", "<leader>dl", function()
  require("dap").run_last()
end, { desc = "Dap Run Last" })

map("n", "<leader>dr", function()
  require("dap").repl.open()
end, { desc = "Dap Open REPL" })

map("n", "<leader>dq", function()
  require("dap").terminate()
end, { desc = "Dap Terminate" })

vim.keymap.set("i", "<C-c>", "<Esc>", { noremap = true, silent = true })
vim.keymap.set("v", "<C-c>", "<Esc>", { noremap = true, silent = true })
