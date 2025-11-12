return {
  {
    "kkoomen/vim-doge",
  },
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {
        "google-java-format",
      },
    },
  },
  {
    "neoclide/coc.nvim",
    branch = "release",
  },
  {
    "puremourning/vimspector",
    config = function()
      vim.g.vimspector_enable_mappings = "HUMAN"
    end,
  },
}
