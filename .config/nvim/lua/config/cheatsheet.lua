-- <leader>? opens a floating cheat sheet with useful binds, laid out in columns.
-- To add/remove a bind, just edit the `sheet` table below.
-- If it doesn't fit on screen, scroll with j/k or <C-d>/<C-u>.

local sheet = {
  { "Files & search", {
    { "<C-p>", "find files" },
    { "<leader>fg", "search text in project" },
    { "<leader>fk", "search ALL keybinds" },
    { "<leader>ft", "search TODO comments" },
    { "<C-n>", "toggle file tree" },
    { "<leader><leader>", "switch to previous file" },
  } },
  { "Inside telescope", {
    { "<C-n> / <C-p>", "next / prev result" },
    { "<CR>", "open" },
    { "<C-v> / <C-x>", "open in vsplit / split" },
    { "<C-t>", "open in new tab" },
    { "<C-q>", "send results to quickfix" },
    { "<Esc> (normal)", "close" },
  } },
  { "File tree (neo-tree)", {
    { "a", "add file (end with / = folder)" },
    { "d / r", "delete / rename" },
    { "c / m", "copy / move" },
    { "H", "show hidden files" },
    { "/", "filter names" },
    { "<BS> / .", "go up / set as root" },
    { "?", "show all tree keys" },
  } },
  { "Moving (basics)", {
    { "w / b / e", "next word / back / word end" },
    { "0 / ^ / $", "line start / first char / end" },
    { "gg / G", "top / bottom of file" },
    { "{ / }", "prev / next empty line" },
    { "%", "jump to matching bracket" },
    { "f x / t x", "to / before next 'x' in line" },
    { "; / ,", "repeat f/t forward / back" },
    { "<C-d> / <C-u>", "half page down / up" },
    { "zz", "center screen on cursor" },
    { "<C-o> / <C-i>", "jump back / forward" },
  } },
  { "Jumping (smart)", {
    { "s", "flash: 2 letters, then label" },
    { "S", "flash: select code block" },
    { "gd", "go to definition" },
    { "gr", "find references" },
    { "ºd / çd", "next / prev error" },
    { "ºh / çh", "next / prev git change" },
    { "ºt / çt", "next / prev TODO" },
    { "(º = ]  ç = [)", "PT keyboard aliases" },
  } },
  { "Code (LSP)", {
    { "K", "hover docs" },
    { "<leader>rn", "rename symbol" },
    { "<leader>ca", "code action (quick fix)" },
    { "<leader>e", "show error on this line" },
    { "<leader>xx", "error list: project" },
    { "<leader>xb", "error list: this file" },
    { "<leader>xt", "TODO list" },
    { "(auto)", "format on save" },
  } },
  { "Editing", {
    { "u / <C-r>", "undo / redo" },
    { ".", "repeat last change" },
    { "dd / yy", "cut / copy line" },
    { "p / P", "paste after / before" },
    { "o / O", "new line below / above" },
    { "A / I", "insert at line end / start" },
    { "ciw", "change word" },
    { "C / D", "change / delete to line end" },
    { "J", "join line below" },
    { ">> / <<", "indent / unindent" },
    { "~", "toggle upper/lower case" },
    { "cl", "old 's' (delete char + insert)" },
  } },
  { "Text objects (d/c/y/v + ...)", {
    { "iw / aw", "word / word + space" },
    { "i\" / a\"", "inside / around quotes" },
    { "i( / a(", "inside / around ( )" },
    { "i{ / a{", "inside / around { }" },
    { "ip / ap", "paragraph" },
    { "it / at", "inside / around HTML tag" },
  } },
  { "Surround & comment", {
    { "gsaiw\"", "surround word with \"" },
    { "gsd\"", "delete surrounding \"" },
    { "gsr\"'", "replace \" with '" },
    { "gsa (visual)", "surround selection" },
    { "gcc", "toggle comment line" },
    { "gc + motion", "comment motion (gcap)" },
  } },
  { "Visual mode", {
    { "v / V", "select chars / lines" },
    { "<C-v>", "select block (columns)" },
    { "o", "jump to other end" },
    { "gv", "reselect last selection" },
    { "I / A (block)", "type on all lines" },
    { "> / <", "indent / unindent" },
  } },
  { "Search & replace", {
    { "/text  ?text", "search forward / back" },
    { "n / N", "next / prev match" },
    { "* / #", "search word under cursor" },
    { ":%s/a/b/g", "replace all a with b" },
    { ":%s/a/b/gc", "replace, ask each time" },
    { "<C-l>", "clear search highlight" },
  } },
  { "Windows & splits", {
    { "<C-w>v / <C-w>s", "split vertical / horizontal" },
    { "<C-w>h/j/k/l", "move to left/down/up/right" },
    { "<C-w>q", "close window" },
    { "<C-w>o", "close all other windows" },
    { "<C-w>=", "make all equal size" },
  } },
  { "Buffers & tabs", {
    { ":bn / :bp", "next / prev buffer" },
    { ":bd", "close buffer" },
    { "gt / gT", "next / prev tab" },
    { ":tabnew", "new tab" },
  } },
  { "Macros & marks", {
    { "qa ... q", "record macro into a" },
    { "@a / @@", "play macro a / repeat last" },
    { "5@a", "play macro a 5 times" },
    { "ma / 'a", "set mark a / jump to it" },
    { "''", "jump back to last spot" },
  } },
  { "Insert mode", {
    { "<C-w>", "delete word before cursor" },
    { "<C-u>", "delete to line start" },
    { "<C-o>", "run one normal command" },
    { "<C-Space>", "open completion" },
    { "<Tab> / <S-Tab>", "next / prev item" },
    { "<CR> / <C-e>", "confirm / close" },
  } },
  { "Git", {
    { "<leader>hs", "stage change" },
    { "<leader>hu", "undo stage" },
    { "<leader>hp", "preview change" },
    { "<leader>hb", "blame line" },
  } },
  { "Neogit (<leader>gg)", {
    { "s / u", "stage / unstage file" },
    { "S", "stage all" },
    { "<Tab>", "show / hide file diff" },
    { "c c", "commit (write msg, then :wq)" },
    { "P p", "push" },
    { "p p", "pull" },
    { "?", "show all keys" },
    { "q", "close" },
  } },
  { "Commands", {
    { ":w / :q / :wq", "save / quit / both" },
    { ":q!", "quit without saving" },
    { ":Lazy", "plugin manager" },
    { ":Mason", "LSP / tool installer" },
    { ":checkhealth", "find config problems" },
  } },
}

local GAP = 4 -- spaces between columns

-- turn one group into lines + highlight ranges (byte columns, relative to the block)
local function render_group(group, keyw)
  local lines = { { text = group[1], hl = { { "Title", 0, #group[1] } } } }
  for _, b in ipairs(group[2]) do
    local pad = string.rep(" ", keyw - vim.fn.strdisplaywidth(b[1]))
    lines[#lines + 1] = {
      text = "  " .. b[1] .. pad .. "  " .. b[2],
      hl = { { "Special", 2, 2 + #b[1] } },
    }
  end
  return lines
end

local function open()
  -- one key width for everything so columns line up
  local keyw = 0
  for _, g in ipairs(sheet) do
    for _, b in ipairs(g[2]) do keyw = math.max(keyw, vim.fn.strdisplaywidth(b[1])) end
  end

  local blocks, colw, total = {}, 0, 0
  for _, g in ipairs(sheet) do
    local blk = render_group(g, keyw)
    for _, l in ipairs(blk) do colw = math.max(colw, vim.fn.strdisplaywidth(l.text)) end
    blocks[#blocks + 1] = blk
    total = total + #blk + 1 -- +1 blank line after each group
  end

  -- how many columns fit on screen, then split groups so columns are about equal height
  local ncols = math.max(1, math.floor((vim.o.columns - 6 + GAP) / (colw + GAP)))
  ncols = math.min(ncols, #blocks)
  local target = math.ceil(total / ncols)
  local cols = { {} }
  local cur = cols[1]
  for _, blk in ipairs(blocks) do
    if #cur > 0 and #cur + #blk > target and #cols < ncols then
      cur = {}
      cols[#cols + 1] = cur
    end
    if #cur > 0 then cur[#cur + 1] = { text = "", hl = {} } end
    for _, l in ipairs(blk) do cur[#cur + 1] = l end
  end

  -- glue the columns side by side
  local height = 0
  for _, c in ipairs(cols) do height = math.max(height, #c) end
  local lines, hls = {}, {}
  for row = 1, height do
    local text = " "
    for ci, c in ipairs(cols) do
      local l = c[row] or { text = "", hl = {} }
      local start = #text
      for _, h in ipairs(l.hl) do
        hls[#hls + 1] = { row - 1, h[1], start + h[2], start + h[3] }
      end
      text = text .. l.text
      if ci < #cols then
        text = text .. string.rep(" ", colw - vim.fn.strdisplaywidth(l.text) + GAP)
      end
    end
    lines[row] = text
  end

  local width = 0
  for _, l in ipairs(lines) do width = math.max(width, vim.fn.strdisplaywidth(l)) end
  width = math.min(width + 1, vim.o.columns - 4)
  local win_h = math.min(height, vim.o.lines - 4)

  local buf = vim.api.nvim_create_buf(false, true)
  vim.api.nvim_buf_set_lines(buf, 0, -1, false, lines)
  local ns = vim.api.nvim_create_namespace("cheatsheet")
  for _, h in ipairs(hls) do
    vim.api.nvim_buf_set_extmark(buf, ns, h[1], h[3], { end_col = h[4], hl_group = h[2] })
  end
  vim.bo[buf].modifiable = false

  local win = vim.api.nvim_open_win(buf, true, {
    relative = "editor",
    width = width,
    height = win_h,
    row = math.floor((vim.o.lines - win_h) / 2) - 1,
    col = math.floor((vim.o.columns - width) / 2),
    style = "minimal",
    border = "rounded",
    title = " Keybinds (q to close) ",
    title_pos = "center",
  })
  vim.wo[win].cursorline = false
  vim.wo[win].wrap = false

  for _, k in ipairs({ "q", "<Esc>", "<leader>?" }) do
    vim.keymap.set("n", k, function() vim.api.nvim_win_close(win, true) end, { buffer = buf, nowait = true })
  end
end

vim.keymap.set("n", "<leader>?", open, { desc = "Keybind cheat sheet" })
