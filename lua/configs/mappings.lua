local set = vim.keymap.set

-- ── File & Session Management ────────────────────────────────────
set({ "i", "x", "n", "s" }, "<C-s>", "<cmd>w<cr><esc>", { desc = "Save File" })
set("n", "<leader>q", "<cmd>qa<cr>", { desc = "Close All" })
set("n", "<leader>Q", "<cmd>qa!<cr>", { desc = "Force Close All" })
set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- ── General Editor Behavior ──────────────────────────────────────
set("i", "jk", "<Esc>")
set("i", "<C-h>", "<Left>", { desc = "move left" })
set("i", "<C-l>", "<Right>", { desc = "move right" })
set("i", "<C-j>", "<Down>", { desc = "move down" })
set("i", "<C-k>", "<Up>", { desc = "move up" })

-- ── Window Navigation & Resizing ─────────────────────────────────
set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

set("n", "<C-Up>", "<cmd>resize +4<cr>", { desc = "Increase Window Height" })
set("n", "<C-Down>", "<cmd>resize -4<cr>", { desc = "Decrease Window Height" })
set("n", "<C-Left>", "<cmd>vertical resize -4<cr>", { desc = "Decrease Window Width" })
set("n", "<C-Right>", "<cmd>vertical resize +4<cr>", { desc = "Increase Window Width" })

-- ── Terminal Mode ────────────────────────────────────────────────
set("t", "<C-x>", "<C-\\><C-n>", { desc = "Exit terminal mode" })
set("t", "<C-h>", [[<Cmd>wincmd h<CR>]])
set("t", "<C-j>", [[<Cmd>wincmd j<CR>]])
set("t", "<C-k>", [[<Cmd>wincmd k<CR>]])
set("t", "<C-l>", [[<Cmd>wincmd l<CR>]])

-- ── Tab Management ───────────────────────────────────────────────
set("n", "<leader><tab><tab>", "<cmd>tabnew<cr>", { desc = "New Tab" })
set("n", "<leader><tab>o", "<cmd>tabonly<cr>", { desc = "Close Other Tabs" })
set("n", "<leader><tab>c", "<cmd>tabclose<cr>", { desc = "Close Tab" })
set("n", "<leader><tab>f", "<cmd>tabfirst<cr>", { desc = "First Tab" })
set("n", "<leader><tab>t", "<cmd>tablast<cr>", { desc = "Last Tab" })
set("n", "<leader><tab>l", "<cmd>tabnext<cr>", { desc = "Next Tab" })
set("n", "<leader><tab>h", "<cmd>tabprevious<cr>", { desc = "Previous Tab" })

-- ── Nvim-Tree ───────────────────────────────────────────────────
set("n", "<leader>e", "<cmd>NvimTreeToggle<cr>", { desc = "Explorer Toggle (Root)" })
set("n", "<leader>E", "<cmd>NvimTreeFindFile<cr>", { desc = "Explorer Focus Current File" })

-- ── Flash (Enhanced Navigation) ──────────────────────────────────
-- Basic Jump
set({ "n", "x", "o" }, "s", function()
	require("flash").jump()
end, { desc = "Flash" })

-- Treesitter Selection & Search
set({ "n", "x", "o" }, "S", function()
	require("flash").treesitter()
end, { desc = "Flash Treesitter" })
set({ "x", "o" }, "R", function()
	require("flash").treesitter_search()
end, { desc = "Treesitter Search" })

-- Remote Operations
set("o", "r", function()
	require("flash").remote()
end, { desc = "Remote Flash" })

-- ── Spider Motions (Subword Navigation) ──────────────────────────
set({ "n", "x", "o" }, "w", "<cmd>lua require('spider').motion('w')<cr>", { desc = "Next word" })
set({ "n", "x", "o" }, "e", "<cmd>lua require('spider').motion('e')<cr>", { desc = "Next end of word" })
set({ "n", "x", "o" }, "b", "<cmd>lua require('spider').motion('b')<cr>", { desc = "Previous word" })
set({ "n", "x", "o" }, "ge", "<cmd>lua require('spider').motion('ge')<cr>", { desc = "Previous end of word" })

-- ── ToggleTerm ──────────────────────────
set("t", "<A-f>", [[<C-\><C-n><cmd>ToggleTerm direction=float<CR>]], { silent = true })
set("t", "<A-s>", [[<C-\><C-n><cmd>ToggleTerm direction=horizontal<CR>]], { silent = true })
set("t", "<A-v>", [[<C-\><C-n><cmd>ToggleTerm direction=vertical<CR>]], { silent = true })
set("n", "<A-f>", "<cmd>ToggleTerm direction=float<CR>", { silent = true })
set("n", "<A-s>", "<cmd>ToggleTerm direction=horizontal<CR>", { silent = true })
set("n", "<A-v>", "<cmd>ToggleTerm direction=vertical size=40<CR>", { silent = true })

-- ── Diagnostics ──────────────────────────────────────────────────
local diagnostic_goto = function(next, severity)
	return function()
		vim.diagnostic.jump({
			count = (next and 1 or -1) * vim.v.count1,
			severity = severity and vim.diagnostic.severity[severity] or nil,
			float = true,
		})
	end
end

set("n", "<leader>ld", vim.diagnostic.open_float, { desc = "Line Diagnostics" })
set("n", "]d", diagnostic_goto(true), { desc = "Next Diagnostic" })
set("n", "[d", diagnostic_goto(false), { desc = "Prev Diagnostic" })
set("n", "]e", diagnostic_goto(true, "ERROR"), { desc = "Next Error" })
set("n", "[e", diagnostic_goto(false, "ERROR"), { desc = "Prev Error" })
set("n", "]w", diagnostic_goto(true, "WARN"), { desc = "Next Warning" })
set("n", "[w", diagnostic_goto(false, "WARN"), { desc = "Prev Warning" })

-- ── Java ────────────────────────
set("n", "<leader>jn", function()
	require("jdtls").test_nearest_method()
end, { desc = "Run nearest test" })

set("n", "<leader>jc", function()
	require("jdtls").test_class()
end, { desc = "Run test class" })

-- ── Dap ────────────────────────
set("n", "<leader>du", function()
	require("dapui").toggle()
end, { desc = "Toggle" })
set("n", "<leader>dU", function()
	require("dapui").close()
end, { desc = "Close" })
set("n", "<leader>dB", function()
	require("dap").set_breakpoint(vim.fn.input("Breakpoint condition: "))
end, { desc = "Breakpoint Condition" })
set("n", "<leader>db", function()
	require("dap").toggle_breakpoint()
end, { desc = "Toggle Breakpoint" })
set("n", "<leader>dc", function()
	require("dap").continue()
end, { desc = "Run/Continue" })
set("n", "<leader>dC", function()
	require("dap").run_to_cursor()
end, { desc = "Run to Cursor" })
set("n", "<leader>dg", function()
	require("dap").goto_()
end, { desc = "Go to Line (No Execute)" })
set("n", "<leader>di", function()
	require("dap").step_into()
end, { desc = "Step Into" })
set("n", "<leader>dj", function()
	require("dap").down()
end, { desc = "Down" })
set("n", "<leader>dk", function()
	require("dap").up()
end, { desc = "Up" })
set("n", "<leader>dl", function()
	require("dap").run_last()
end, { desc = "Run Last" })
set("n", "<leader>do", function()
	require("dap").step_out()
end, { desc = "Step Out" })
set("n", "<leader>dO", function()
	require("dap").step_over()
end, { desc = "Step Over" })
set("n", "<leader>dP", function()
	require("dap").pause()
end, { desc = "Pause" })
set("n", "<leader>dr", function()
	require("dap").repl.toggle()
end, { desc = "Toggle REPL" })
set("n", "<leader>ds", function()
	require("dap").session()
end, { desc = "Session" })
set("n", "<leader>dt", function()
	require("dap").terminate()
end, { desc = "Terminate" })
set("n", "<leader>dw", function()
	require("dap.ui.widgets").hover()
end, { desc = "Widgets" })

-- ── LSP ────────────────────────
set("n", "gd", "<cmd>Telescope lsp_definitions<cr>", { desc = "LSP: Goto Definition" })
set("n", "gr", "<cmd>Telescope lsp_references<cr>", { desc = "LSP: Goto References" })
set("n", "gI", "<cmd>Telescope lsp_implementations<cr>", { desc = "LSP: Goto Implementation" })
set("n", "gT", "<cmd>Telescope lsp_type_definitions<cr>", { desc = "LSP: Goto Type Definition" })
-- set("n", "K", vim.lsp.buf.hover, { desc = "LSP: Hover" })
set("n", "<leader>lr", vim.lsp.buf.rename, { desc = "LSP: Rename" })
set({ "n", "x" }, "<leader>la", vim.lsp.buf.code_action, { desc = "LSP: Code Action" })
set("n", "<leader>lh", function()
	vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())
end, { desc = "Toggle Inlay Hints" })

set("n", "<leader>lc", function()
  require('neogen').generate()
end, { desc = "Neogen" })
