return {

  { "mfussenegger/nvim-jdtls" },
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {
        "jdtls",
        "json-lsp",
        "yaml-language-server",
        "java-debug-adapter",
        "google-java-format",
      },
    },
  },
  {
    -- Debug Framework
    "mfussenegger/nvim-dap",
    dependencies = {
      "rcarriga/nvim-dap-ui",
      "mfussenegger/nvim-jdtls",
    },
    -- config = function()
    --   require "custom-config.nvim-dap"
    -- end,
    event = "VeryLazy",
  },
  { "nvim-neotest/nvim-nio" },
  { "rcarriga/nvim-dap-ui", dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" } },
  {
    "rcasia/neotest-java",
    ft = "java",
    dependencies = {
      "mfussenegger/nvim-jdtls",
      "mfussenegger/nvim-dap",
      "rcarriga/nvim-dap-ui",
    },
  },
  {
    "nvim-neotest/neotest",
    dependencies = {
      "nvim-neotest/nvim-nio",
      "nvim-lua/plenary.nvim",
      "antoinemadec/FixCursorHold.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
    config = function()
      require("neotest").setup({
        adapters = {
          require("neotest-java")({
            -- config here
          }),
        },
      })
    end,
  },
}
