-- colors TODO:, FIXME:, NOTE:, HACK:, WARN: in comments
return {
  "folke/todo-comments.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  event = { "BufReadPost", "BufNewFile" },
  opts = {},
  keys = {
    { "]t", function() require("todo-comments").jump_next() end, desc = "Next TODO comment" },
    { "[t", function() require("todo-comments").jump_prev() end, desc = "Previous TODO comment" },
    { "<leader>ft", "<cmd>TodoTelescope<cr>", desc = "Find TODO comments (telescope)" },
  },
}
