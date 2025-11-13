vim.g.meutoken = "loveamor"
vim.g.idquestao = "coracao"

-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("config.conform")
require("blink.cmp").setup({
  enabled = function()
    return not vim.b.blink_disable
  end,
})
