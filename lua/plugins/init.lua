return {
	{ "nvim-mini/mini.move", version = false },
	{ "nvim-mini/mini.surround", version = false },

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
				"java-test",
				"java-debug-adapter",
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
	{
		"nvim-java/nvim-java",
		config = false,
		dependencies = {
			{
				"neovim/nvim-lspconfig",
				opts = {
					servers = {
						-- Your JDTLS configuration goes here
						jdtls = {
							-- settings = {
							--   java = {
							--     configuration = {
							--       runtimes = {
							--         {
							--           name = "JavaSE-23",
							--           path = "/usr/local/sdkman/candidates/java/23-tem",
							--         },
							--       },
							--     },
							--   },
							-- },
						},
					},
					setup = {
						jdtls = function()
							-- Your nvim-java configuration goes here
							require("java").setup({
								-- root_markers = {
								--   "settings.gradle",
								--   "settings.gradle.kts",
								--   "pom.xml",
								--   "build.gradle",
								--   "mvnw",
								--   "gradlew",
								--   "build.gradle",
								--   "build.gradle.kts",
								-- },
							})
						end,
					},
				},
			},
		},
	},
}
