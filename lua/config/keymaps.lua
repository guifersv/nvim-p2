-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set

-- Java debugging keymaps (using coc-java-debug)
map("n", "<leader>jd", "<cmd>CocCommand java.debug.vimspector.start<CR>", { desc = "Java: Start Debug" })

-- Vimspector keymaps
map("n", "<leader>dd", "<cmd>call vimspector#Launch()<CR>", { desc = "Debug: Launch" })
map("n", "<leader>de", "<cmd>call vimspector#Reset()<CR>", { desc = "Debug: Stop" })
map("n", "<leader>dc", "<cmd>call vimspector#Continue()<CR>", { desc = "Debug: Continue" })
map("n", "<leader>db", "<cmd>call vimspector#ToggleBreakpoint()<CR>", { desc = "Debug: Toggle Breakpoint" })
map(
  "n",
  "<leader>dB",
  "<cmd>call vimspector#ToggleBreakpoint(v:null, v:null, input('Condition: '))<CR>",
  { desc = "Debug: Conditional Breakpoint" }
)
map("n", "<leader>do", "<cmd>call vimspector#StepOver()<CR>", { desc = "Debug: Step Over" })
map("n", "<leader>di", "<cmd>call vimspector#StepInto()<CR>", { desc = "Debug: Step Into" })
map("n", "<leader>dO", "<cmd>call vimspector#StepOut()<CR>", { desc = "Debug: Step Out" })
map("n", "<leader>dh", "<cmd>call vimspector#ToggleVariablePreview()<CR>", { desc = "Debug: Hover Variable" })
map("n", "<leader>dr", "<cmd>call vimspector#Restart()<CR>", { desc = "Debug: Restart" })
