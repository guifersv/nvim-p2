return {
  "mason-org/mason.nvim",
	dependencies = {
		"mason-org/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		"saghen/blink.cmp",
		"nvim-telescope/telescope.nvim",
	},
  config = function()
    require("mason").setup()

    require("mason-tool-installer").setup({
      ensure_installed = {
        "jdtls",
        "google-java-format",
        "lua_ls",
        "stylua",
      },
    })

    require("mason-lspconfig").setup()
  end,
}

