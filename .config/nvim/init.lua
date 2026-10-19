
vim.g.mapleader = " "
--vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

vim.opt.clipboard = "unnamedplus"

-- relative line numbers (current line shows its real number)
vim.opt.number = true
vim.opt.relativenumber = true
-- needed for CursorLineNr color to apply; "number" = only color the number, not the whole line
vim.opt.cursorline = true
vim.opt.cursorlineopt = "number"


require("config.lazy")
