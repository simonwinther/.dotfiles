return {
  "simonwinther/dir2text.nvim",
  dependencies = { "stevearc/oil.nvim" },
  opts = {
    output = "clipboard",
    title = "Selected Files Directory Structure:",
    header_fmt = "--- %s ---",
    trim_trailing_newlines = true,
    keymaps = {
      normal = "gy",
      visual = "gY",
    },
  },
}
