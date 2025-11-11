return {
  "AndrewRadev/switch.vim",
  config = function()
    local S = vim.fn["switch#NormalizedCaseWords"]

    vim.g.switch_custom_definitions = {
      -- Boolean / flag switches (case-aware)
      S({ "true", "false" }),
      S({ "on", "off" }),
      S({ "yes", "no" }),

      -- numeric / simple toggles
      { "0", "1" },
      { "define", "undef" },

      -- comparison and assignment
      { "==", "!=" },
      { ">=", "<=" },
      { "+=", "-=" },
      { "*=", "/=" },

      -- increment / decrement (multi-char operators)
      { "++", "--" },
      { "--", "++" },

      -- SINGLE + / - only (never match ++ or --)
      {
        -- match a + that is not next to another +
        ["\\%(^\\|[^+]\\)\\zs[+]\\ze\\%($\\|[^+]\\)"] = "-",
        -- match a - that is not next to another -
        ["\\%(^\\|[^-]\\)\\zs[-]\\ze\\%($\\|[^-]\\)"] = "+",
      },

      -- arithmetic and relational
      { "*", "/" },
      { ">", "<" },
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
