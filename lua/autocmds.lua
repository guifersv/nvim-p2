require "nvchad.autocmds"

local autocmd = vim.api.nvim_create_autocmd

autocmd("BufEnter", {
  group = vim.api.nvim_create_augroup("NvimTree_start_directory", { clear = true }),
  desc = "Start Nvim-tree with directory",
  once = true,
  callback = function()
    if package.loaded["nvim-tree"] then
      return
    else
      local stats = vim.uv.fs_stat(vim.fn.argv(0))
      if stats and stats.type == "directory" then
        require("nvim-tree.api").tree.open()
      end
    end
  end,
})

autocmd("BufDelete", {
  callback = function()
    local bufs = vim.t.bufs
    if #bufs == 1 and vim.api.nvim_buf_get_name(bufs[1]) == "" then
      vim.cmd "Nvdash"
    end
  end,
})
