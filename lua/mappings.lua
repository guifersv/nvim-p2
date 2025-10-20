require("nvchad.mappings")

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map("n", "<C-left>", "<C-w><", { desc = "Decrease width" })
map("n", "<C-right>", "<C-w>>", { desc = "Increase width" })
map("n", "<C-up>", "<C-w>+", { desc = "Increase height" })
map("n", "<C-down>", "<C-w>-", { desc = "Decrease height" })

map("n", "<leader>q", "<cmd> qa <cr>", { desc = "Quit all" })
map("n", "<leader><S-q>", "<cmd> qa! <cr>", { desc = "Force quit all" })

map("n", "<S-h>", function()
	require("nvchad.tabufline").prev()
end, { desc = "Switch to prev buffer" })

map("n", "<S-l>", function()
	require("nvchad.tabufline").next()
end, { desc = "Switch to next buffer" })

map("n", "<leader><S-x>", function()
	require("nvchad.tabufline").closeAllBufs(true)
end, { desc = "Close all buffers" })

map("n", "<A-r>", function()
	local file = vim.fn.expand("%:p")
	local classname = vim.fn.expand("%:t:r")

	require("nvchad.term").runner({
		pos = "vsp",
		cmd = "javac " .. file .. " && java " .. classname,
		id = "ekk",
		clear_cmd = false,
	})
end, { desc = "Java code runner" })

-- Debugger

map("n", "<leader>dt", function()
	require("dap").toggle_breakpoint()
end, { desc = "Toggle Breakpoint" })

map("n", "<leader>dc", function()
	require("dap").continue()
end, { desc = "Continue" })

map("n", "<leader>di", function()
	require("dap").step_into()
end, { desc = "Step Into" })

map("n", "<leader>do", function()
	require("dap").step_over()
end, { desc = "Step Over" })

map("n", "<leader>du", function()
	require("dap").step_out()
end, { desc = "Step Out" })

map("n", "<leader>dd", function()
	require("dapui").toggle()
end, { desc = "DAP UI Toggle" })

map("n", "<leader>dl", function()
	require("dap").run_last()
end, { desc = "Run Last" })

map("n", "<leader>dr", function()
	require("dap").repl.open()
end, { desc = "Open REPL" })

map("n", "<leader>dq", function()
	require("dap").terminate()
	require("dapui").close()
end, { desc = "Terminate" })

map("n", "<leader>db", function()
	require("dap").list_breakpoints()
end, { desc = "List Breakpoints" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
