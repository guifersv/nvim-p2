return {
	{ "nvim-mini/mini.move", version = false },
	{ "nvim-mini/mini.surround", version = false },
  { "mfussenegger/nvim-jdtls" },

	{
		"stevearc/conform.nvim",
		event = "BufWritePre", -- format on save
		opts = require("configs.conform"),
	},

	-- These are some examples, uncomment them if you want to see them work!
	{
		"neovim/nvim-lspconfig",
		config = function()
			require("configs.lspconfig")
		end,
	},

	-- test new blink
	-- { import = "nvchad.blink.lazyspec" },

	{
		"mason-org/mason.nvim",
		opts = {
			registries = {
				"github:mason-org/mason-registry",
				"github:Crashdummyy/mason-registry",
			},
			ensure_installed = {
				"lua-language-server",
				"stylua",
				"jdtls",
			},
		},
	},

	{
		"nvim-treesitter/nvim-treesitter",
		opts = {
			ensure_installed = {
				"vim",
				"lua",
				"vimdoc",
				"java",
			},
		},
	},
}
