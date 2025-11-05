return {
  {
    "nvim-treesitter/nvim-treesitter-textobjects",
    opts = {
      swap = {
        enable = true,
        swap_next = {
          ["<leader>na"] = "@parameter.inner",
          ["<leader>nf"] = "@function.outer",
          ["<leader>nb"] = "@block.outer",
        },
        swap_previous = {
          ["<leader>pa"] = "@parameter.inner",
          ["<leader>pf"] = "@function.outer",
          ["<leader>pb"] = "@block.outer",
        },
      },
    },
  },
}
