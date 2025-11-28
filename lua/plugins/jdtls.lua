return {
  {
    "mfussenegger/nvim-jdtls",
    ft = { "java" },

    opts = function(_, opts)
      local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ":p:h:t")
      local workspace_dir = vim.fn.stdpath("data") .. "/site/java/workspace-root/" .. project_name
      vim.fn.mkdir(workspace_dir, "p")

      return vim.tbl_deep_extend("force", {
        cmd = {
          "java",
          "-Declipse.application=org.eclipse.jdt.ls.core.id1",
          "-Dosgi.bundles.defaultStartLevel=4",
          "-Declipse.product=org.eclipse.jdt.ls.core.product",
          "-Dlog.protocol=true",
          "-Dlog.level=ALL",
          "-javaagent:" .. vim.fn.expand("$MASON/share/jdtls/lombok.jar"),
          "-Xms1g",
          "--add-modules=ALL-SYSTEM",
          "--add-opens",
          "java.base/java.util=ALL-UNNAMED",
          "--add-opens",
          "java.base/java.lang=ALL-UNNAMED",
          "-jar",
          vim.fn.expand("$MASON/share/jdtls/plugins/org.eclipse.equinox.launcher.jar"),
          "-configuration",
          vim.fn.expand("$MASON/share/jdtls/config"),
          "-data",
          workspace_dir,
        },

        root_dir = vim.fs.root(0, { ".git", "mvnw", "gradlew" }),

        settings = {
          java = {
            eclipse = { downloadSources = true },
            configuration = { updateBuildConfiguration = "interactive" },
            maven = { downloadSources = true },
            implementationsCodeLens = { enabled = true },
            referencesCodeLens = { enabled = true },
            inlayHints = { parameterNames = { enabled = "all" } },
            contentProvider = { preferred = "fernflower" },
            signatureHelp = { enabled = true, description = { enabled = true } },
            completion = {
              favoriteStaticMembers = {
                "org.hamcrest.MatcherAssert.assertThat",
                "org.hamcrest.Matchers.*",
                "org.hamcrest.CoreMatchers.*",
                "org.junit.jupiter.api.Assertions.*",
                "java.util.Objects.requireNonNull",
                "java.util.Objects.requireNonNullElse",
                "org.mockito.Mockito.*",
              },
            },
            sources = {
              organizeImports = {
                starThreshold = 9999,
                staticStarThreshold = 9999,
              },
            },
          },
        },

        init_options = {
          bundles = {
            vim.fn.expand("$MASON/share/java-debug-adapter/com.microsoft.java.debug.plugin.jar"),
            unpack(vim.split(vim.fn.glob("$MASON/share/java-test/*.jar"), "\n")),
          },
        },

        handlers = {
          ["$/progress"] = function() end,
        },

        filetypes = { "java" },

        on_attach = function(...)
          require("jdtls").setup_dap({ hotcodereplace = "auto" })

          local ok, astrolsp = pcall(require, "astrolsp")
          if ok then
            astrolsp.on_attach(...)
          end
        end,
      }, opts)
    end,

    config = function(_, opts)
      vim.api.nvim_create_autocmd("FileType", {
        pattern = "java",
        callback = function()
          if opts.root_dir and opts.root_dir ~= "" then
            require("jdtls").start_or_attach(opts)
          else
            vim.notify("jdtls: root_dir not found. Please specify a root marker", vim.log.levels.ERROR)
          end
        end,
      })

      vim.api.nvim_create_autocmd("LspAttach", {
        pattern = "*.java",
        callback = function(args)
          local client = vim.lsp.get_client_by_id(args.data.client_id)
          if client and client.name == "jdtls" then
            require("jdtls.dap").setup_dap_main_class_configs()
          end
        end,
      })
    end,
  },
}
