return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  opts = {},
  config = function(_, opts)
    require("tokyonight").setup(opts)
    vim.opt.termguicolors = true
    vim.opt.winblend = 10 -- floating windows
    vim.opt.pumblend = 10 -- completion menu

    vim.cmd([[colorscheme tokyonight-night]])
    vim.api.nvim_set_hl(0, "LineNr", { fg = "#ffffff" })
  end,
}
