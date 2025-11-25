local ls = require("luasnip")
local s, t, i, fmt = ls.snippet, ls.text_node, ls.insert_node, require("luasnip.extras.fmt").fmt

local function in_math()
  return vim.fn["vimtex#syntax#in_mathzone"]() == 1
end

return {
  -- \section
  s("sec", fmt("\\section{{{}}}\n\\label{{sec:{}}}\n", { i(1, "Title"), i(2, "key") })),
  -- \subsection
  s("ssec", fmt("\\subsection{{{}}}\n\\label{{ssec:{}}}\n", { i(1, "Title"), i(2, "key") })),
  -- inline math (only in math zone)
  s({ trig = "mm", dscr = "inline math", condition = in_math }, fmt([[\( {}\)]], { i(1) })),
}
