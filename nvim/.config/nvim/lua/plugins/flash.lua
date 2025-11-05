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
    { "s", mode = { "n", "x", "o" }, "/", desc = "Flash" },
    { "S", mode = { "n", "x", "o" }, "?", desc = "Flash backward" },
    {
      "gs", -- DUPLICATE KEY
      mode = { "n", "x", "o" },
      function()
        require("flash").treesitter()
      end,
      desc = "Flash Treesitter",
    },
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
