
vim.g.mapleader = " "
--vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

vim.opt.clipboard = "unnamedplus"

-- relative line numbers (current line shows its real number)
vim.opt.number = true
vim.opt.relativenumber = true
-- highlight the cursor line; "both" = color the whole line AND the line number
vim.opt.cursorline = true
vim.opt.cursorlineopt = "both"

-- keep 5 lines visible above/below the cursor when scrolling
vim.opt.scrolloff = 5

-- keep undo history after closing a file (saved in ~/.local/state/nvim/undo)
vim.opt.undofile = true

-- briefly flash the text you just yanked (copied)
vim.api.nvim_create_autocmd("TextYankPost", {
  callback = function()
    vim.hl.on_yank({ timeout = 200 })
  end,
})


require("config.lazy")
