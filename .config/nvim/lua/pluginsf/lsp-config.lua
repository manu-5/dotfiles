return {
  -- Mason handles installation of tools
  {
    "mason-org/mason.nvim",
    opts = {}
  },

  -- Mason-LSPConfig bridges Mason and Neovim's LSP
  {
    "mason-org/mason-lspconfig.nvim",
    dependencies = {
      "mason-org/mason.nvim",
      "neovim/nvim-lspconfig",
      "hrsh7th/cmp-nvim-lsp",
    },

    opts = {
      -- Tell Mason which servers you want installed
      ensure_installed = { "lua_ls", "clangd", "jdtls", "pyright" },

      -- Optional: you can disable automatic enabling if you want
      -- automatic_enable = { exclude = { "jdtls" } },
    },

    config = function(_, opts)
      -- 1️⃣ Set up Mason itself
      require("mason").setup()

      -- 2️⃣ Set up Mason-LSPConfig with your options
      require("mason-lspconfig").setup(opts)

      -- 3️⃣ Configure each LSP server
      -- You can use either vim.lsp.config or lspconfig
      local lspconfig = require("lspconfig")

      -- 🧠 Global LSP keymaps (shared by all servers)
      vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "LSP Hover" })
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to Definition" })
      vim.keymap.set("n", "gr", vim.lsp.buf.references, { desc = "Find References" })
      vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "Rename Symbol" })
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "LSP Code Action" })
      vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Show line diagnostics" })
      -- 🧩 Optional: default config for all servers
      vim.lsp.config("*", {
        capabilities = require("cmp_nvim_lsp").default_capabilities(),
      })

      -- 🦙 Lua (for Neovim config development)
      vim.lsp.config("lua_ls", {
        settings = {
          Lua = {
            diagnostics = {
              globals = { "vim" },
            },
            workspace = {
              library = vim.api.nvim_get_runtime_file("", true),
            },
          },
        },
      })

      -- 🧱 C / C++
      vim.lsp.config("clangd", {
        cmd = { "clangd", "--background-index" },
      })

      -- 🐍 Python
      vim.lsp.config("pyright", {
        settings = {
          python = {
            analysis = {
              typeCheckingMode = "basic",
            },
          },
        },
      })

      -- ☕ Java
      vim.lsp.config("jdtls", {
        -- For advanced setups, you'd use nvim-jdtls instead
      })
    end,
  },
}
