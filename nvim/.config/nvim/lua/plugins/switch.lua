return {
  "AndrewRadev/switch.vim",
  config = function()
    -- this helper comes from switch.vim (autoload), so we call it *after* the plugin is loaded
    local S = vim.fn["switch#NormalizedCaseWords"]

    vim.g.switch_custom_definitions = {
      -- booleans / flags (case-aware: true/false, True/False, TRUE/FALSE)
      S({ "true", "false" }),
      S({ "on", "off" }),
      S({ "yes", "no" }),
      { "0", "1" },

      -- macros / config
      { "define", "undef" },

      -- math / comparison operators
      { "+", "-" },
      { "*", "/" }, -- multiply ↔ divide
      { ">", "<" },
      { ">=", "<=" },
      { "==", "!=" },
      { "++", "--" }, -- increment ↔ decrement
      { "+=", "-=" },
      { "*=", "/=" },
      { "min", "max" },
      { "floor", "ceil" },
      { "ceil", "floor" },
      { "abs", "-abs" },
      -- logical / bitwise
      { "&&", "||" },
      { "&", "|" },
    }
  end,
}
