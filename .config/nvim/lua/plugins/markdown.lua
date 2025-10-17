-- ~/.config/nvim/lua/plugins/markdown.lua
return {
  {
    "OXY2DEV/markview.nvim",
    lazy = false, -- as recommended
    opts = {
      preview = { icon_provider = "internal" }, -- optional
    },
    config = function(_, opts)
      local presets = require("markview.presets") -- safe here
      opts.markdown = opts.markdown or {}
      opts.markdown.headings = presets.headings.slanted -- pick a preset
      require("markview").setup(opts)
    end,
  },
  -- If you had render-markdown before, disable it:
  -- { "MeanderingProgrammer/render-markdown.nvim", enabled = false },
}
