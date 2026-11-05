-- shows function parameters in a popup while you type the arguments (current one highlighted)
return {
  "ray-x/lsp_signature.nvim",
  event = "LspAttach",
  opts = {
    hint_enable = false, -- no extra inline hint text, just the popup
    handler_opts = { border = "rounded" },
  },
}
