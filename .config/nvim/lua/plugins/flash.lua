return {
  "folke/flash.nvim",
  event = "VeryLazy",
  lazy = true,
  opts = {
    modes = {
      search = {
        enabled = true,
      },
      char = {
        jump_labels = true,
      },
    },
  },
  keys = {
    {
      "<c-s>", -- DUPLICATE KEY: <c-s> is for saving
      mode = { "c" },
      function()
        require("flash").toggle()
      end,
      desc = "Toggle Flash Search",
    },
  },
}
