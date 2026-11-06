-- Neogit: git UI inside nvim. Open with <leader>gg, press ? inside for all keys.
return {
  "NeogitOrg/neogit",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim",
  },
  cmd = "Neogit",
  keys = {
    { "<leader>gg", "<cmd>Neogit<cr>", desc = "Neogit (git UI)" },
  },
  opts = {},
}
