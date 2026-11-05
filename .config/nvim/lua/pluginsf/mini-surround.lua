-- add / delete / replace quotes and brackets around text
-- uses the "gs" prefix because plain "s" is taken by flash.nvim
--   gsaiw"   -> surround word with "      (add)
--   gsd"     -> delete the " around cursor (delete)
--   gsr"'    -> replace " with '           (replace)
return {
  "echasnovski/mini.surround",
  event = "VeryLazy",
  opts = {
    mappings = {
      add = "gsa",
      delete = "gsd",
      replace = "gsr",
      find = "gsf",
      find_left = "gsF",
      highlight = "gsh",
      update_n_lines = "gsn",
    },
  },
}
