-- ~/.config/nvim/after/ftplugin/tex.lua
-- This only runs in LaTeX files (.tex)

require("nvim-surround").buffer_setup({
  surrounds = {
    e = { add = { "\\emph{", "}" } },
    b = { add = { "\\textbf{", "}" } },
    i = { add = { "\\textit{", "}" } },
    u = { add = { "\\underline{", "}" } },
    c = { add = { "\\cite{", "}" } },
  },
})
