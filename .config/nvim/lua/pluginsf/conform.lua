return {
  "stevearc/conform.nvim",
  event = { "BufWritePre" },
  cmd = { "ConformInfo" },
  config = function()
    require("conform").setup({
      formatters_by_ft = {
        lua        = { "stylua" },
        python     = { "black" },
        c          = { "clang-format" },
        cpp        = { "clang-format" },
        java       = { "google-java-format" },
        javascript = { "prettier" },
        typescript = { "prettier" },
      },
      format_on_save = {
        timeout_ms = 500,
        lsp_fallback = true,
      },
    })
  end,
}
