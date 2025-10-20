require("nvchad.mappings")

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map("n", "<C-left>", "<C-w><", { desc = "Window Decrease width" })
map("n", "<C-right>", "<C-w>>", { desc = "Window Increase width" })
map("n", "<C-up>", "<C-w>+", { desc = "Window Increase height" })
map("n", "<C-down>", "<C-w>-", { desc = "Window Decrease height" })

map("n", "<leader>q", "<cmd> qa <cr>", { desc = "Window Quit all" })
map("n", "<leader><S-q>", "<cmd> qa! <cr>", { desc = "Window Force quit all" })

map("n", "<leader>cd", vim.diagnostic.open_float, { desc = "Lsp Line Diagnostics" })
map("n", "<leader>ca", "<cmd> lua vim.lsp.buf.code_action() <cr>", { desc = "Lsp Code Action" })

map("n", "<S-h>", function()
	require("nvchad.tabufline").prev()
end, { desc = "Buffer Switch to prev" })

map("n", "<S-l>", function()
	require("nvchad.tabufline").next()
end, { desc = "Buffer Switch to next" })

map("n", "<leader><S-x>", function()
	require("nvchad.tabufline").closeAllBufs(true)
end, { desc = "Buffer Close All" })

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

map("n", "<leader>dd", function()
	require("dapui").toggle()
end, { desc = "Dap UI Toggle" })

map("n", "<leader>dl", function()
	require("dap").run_last()
end, { desc = "Dap Run Last" })

map("n", "<leader>dr", function()
	require("dap").repl.open()
end, { desc = "Dap Open REPL" })

map("n", "<leader>dq", function()
	require("dap").terminate()
	require("dapui").close()
end, { desc = "Dap Terminate" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
