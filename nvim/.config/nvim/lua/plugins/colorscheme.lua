return {
  -- override the default theme
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  opts = {
    style = "night",
    on_highlights = function(hl, c)
      hl.LineNr = { fg = "#C0CCDC" }
      hl.LineNrAbove = { fg = "#AAB4CC" }
      hl.LineNrBelow = { fg = "#AAB4CC" }
      hl.VertSplit = { fg = "#444B6A" }
      hl.WinSeparator = { fg = "#5A5F80" }

      hl.FloatTitle = { fg = c.orange, bold = true }
      hl.FloatBorder = { fg = "#5A5F80" }

      hl.TermFloat = { bg = c.orange }

      -- Telescope
      hl.TelescopeBorder = { fg = "#5A5F80" }
      hl.TelescopePromptBorder = { fg = "#7A80A0" }
      hl.TelescopePromptTitle = { fg = c.orange, bold = true }
      hl.TelescopePromptPrefix = { fg = c.orange, bold = true }
      hl.TelescopeResultsBorder = { fg = "#5A5F80" }
      hl.TelescopePreviewBorder = { fg = "#5A5F80" }
      hl.TelescopePreviewTitle = { fg = c.orange, bold = true }
      hl.TelescopeResultsTitle = { fg = c.orange, bold = true }
      hl.TelescopeMatching = { fg = c.orange, bold = true }

      -- lazygit plugin
      hl.LazyGitFloat = { bg = c.orange }
      hl.LazyGitBorder = { fg = "#5A5F80" }

      -- Cmd Line (Noice)
      hl.NoiceCmdlinePopupBorder = { fg = "#7A80A0" }
      hl.NoiceCmdlineIconCmdline = { fg = c.orange, bold = true }
      hl.NoiceCmdlinePrompt = { fg = c.orange, bold = true }
      hl.NoiceCmdlinePopupBorderSearch = { fg = "#7A80A0" }
      hl.NoiceCmdlinePopupTitle = { fg = c.orange, bold = true }
      hl.NoiceCmdlineIcon = { fg = c.orange, bold = true }

      -- Snacks plugin
      hl.SnacksNormal = { bg = "#1A1B26" }
      hl.SnacksBorder = { fg = "#7A80A0" }

      -- Picker borders
      hl.SnacksPickerNormal = { bg = "#1A1B26" }
      hl.SnacksPickerIcon = { fg = "#7AA2F7" }
      hl.SnacksPickerMatch = { fg = c.orange, bold = true }
      hl.SnacksPickerTitle = { fg = c.orange, bold = true }
      hl.SnacksPickerSelection = { bg = "#2A3350", bold = true }
      hl.SnacksPickerTotals = { fg = c.orange, bold = true }
      hl.SnacksPickerBorder = { fg = "#5A5F80" }

      -- Input area
      hl.SnacksPickerPrompt = { fg = c.orange, bold = true }
      hl.SnacksInputBorder = { fg = "#7A80A0" }
      hl.SnacksInputTitle = { fg = c.orange, bold = true }

      -- Results and preview
      hl.SnacksResultsBorder = { fg = "#5A5F80" }
      hl.SnacksPreviewBorder = { fg = "#5A5F80" }
      hl.SnacksPreviewTitle = { fg = c.orange, bold = true }

      -- Selection and matches
      hl.SnacksPickerSelection = { bg = "#2A3350", bold = true }
      hl.SnacksPickerMatch = { fg = c.orange, bold = true }
    end,
  },
}
