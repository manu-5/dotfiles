return {
  {
    "catppuccin/nvim",
    lazy = false,
    name = "catppuccin",
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        -- dim the line numbers so they don't stand out
        custom_highlights = function(colors)
          return {
            LineNr = { fg = colors.surface1 },
            LineNrAbove = { fg = colors.surface1 },
            LineNrBelow = { fg = colors.surface1 },
            CursorLineNr = { fg = "#e0cc8a", bold = true }, -- dirty tooth yellow
            -- stronger than the default (default mixes surface0 with the background)
            CursorLine = { bg = colors.surface1 },
          }
        end,
      })
      vim.cmd.colorscheme "catppuccin-mocha"
    end
  }

}



