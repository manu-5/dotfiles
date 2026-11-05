-- sticky header: shows the function / block you're inside at the top of the screen (like VSCode sticky scroll)
return {
  "nvim-treesitter/nvim-treesitter-context",
  dependencies = { "nvim-treesitter/nvim-treesitter" },
  event = { "BufReadPost", "BufNewFile" },
  opts = {
    max_lines = 3, -- show at most 3 levels at the top, so it doesn't eat the screen
    trim_scope = "outer", -- when too many levels, hide the outer ones (keep the closest)
  },
}
