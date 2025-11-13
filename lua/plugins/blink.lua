return {
  "saghen/blink.cmp",
  opts = function(_, opts)
    opts.enabled = function()
      -- Disable Blink completion in Java buffers
      return vim.bo.filetype ~= "java"
    end

    -- Keep your existing keymaps
    opts.keymap = {
      preset = "default",
      ["<Tab>"] = { "select_next", "fallback" },
      ["<S-Tab>"] = { "select_prev", "fallback" },
    }

    return opts
  end,
}
