-- ~/.config/nvim/lua/plugins/snacks.lua
return {
  {
    "folke/snacks.nvim",
    opts = {
      image = {
        enabled = true,
      },
      picker = {
        enabled = true,
        win = {
          input = {
            keys = {
              ["-"] = { "edit_split", mode = { "n" } }, -- horizontal split
              ["|"] = { "edit_vsplit", mode = { "n" } }, -- vertical split
              ["<C-t>"] = { "tabedit", mode = { "n" } }, -- new tab (optional)
            },
          },
          -- If you also want the same keys to work when the list has focus:
          list = {
            keys = {
              ["-"] = { "edit_split", mode = { "n" } },
              ["|"] = { "edit_vsplit", mode = { "n" } },
              ["<C-t>"] = { "tabedit", mode = { "n" } },
            },
          },
        },
      },
    },
  },
}
