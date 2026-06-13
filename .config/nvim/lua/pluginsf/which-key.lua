return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  config = function()
    local wk = require("which-key")
    wk.setup()
    wk.add({
      { "<C-p>", desc = "Find files" },
      { "<C-n>", desc = "Toggle file explorer" },
      { "<C-Space>", desc = "Trigger completion" },
    })
  end,
}
