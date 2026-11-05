-- list of all errors / warnings, click or press Enter to jump to one
return {
  "folke/trouble.nvim",
  cmd = "Trouble",
  opts = {},
  keys = {
    { "<leader>xx", "<cmd>Trouble diagnostics toggle<cr>", desc = "Errors/warnings (whole project)" },
    { "<leader>xb", "<cmd>Trouble diagnostics toggle filter.buf=0<cr>", desc = "Errors/warnings (this file)" },
    { "<leader>xt", "<cmd>Trouble todo toggle<cr>", desc = "TODO comments list" },
  },
}
