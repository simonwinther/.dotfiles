-- ~/.config/nvim/after/ftplugin/tex.lua
-- This only runs in LaTeX files (.tex)
local ns = require("nvim-surround")

ns.buffer_setup({
  aliases = {
    ["b"] = false,
  },
  surrounds = {
    e = { add = { "\\emph{", "}" } },
    b = { add = { "\\textbf{", "}" } },
    i = { add = { "\\textit{", "}" } },
    u = { add = { "\\underline{", "}" } },
    c = { add = { "\\cite{", "}" } },
    m = { add = { "\\(", "\\)" } },
    d = { add = { "\\[", "\\]" } },
    t = { add = { "\\texttt{", "}" } },
  },
})
