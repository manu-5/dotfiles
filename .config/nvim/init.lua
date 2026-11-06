
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

-- switch to previous file (same as <C-^>, which is hard to type on a PT keyboard)
vim.keymap.set("n", "<leader><leader>", "<C-^>", { desc = "Switch to previous file" })

-- PT keyboard: ç acts as [ and º acts as ] (so çh / ºh = prev / next git change, etc.)
-- remap = true so they trigger whatever [ / ] maps exist (gitsigns, todo, diagnostics)
vim.keymap.set({ "n", "x", "o" }, "ç", "[", { remap = true, desc = "[ (PT keyboard)" })
vim.keymap.set({ "n", "x", "o" }, "º", "]", { remap = true, desc = "] (PT keyboard)" })

require("config.lazy")
require("config.cheatsheet")
