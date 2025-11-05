return {
  "nvchad/showkeys",
  cmd = "ShowkeysToggle",
  opts = {
    timeout = 66,
    maxkeys = 6,
    position = "bottom-right",
  },
  keys = {
    {
      "<leader>ut",
      function()
        vim.cmd("ShowkeysToggle")
      end,
      desc = "Show key presses",
    },
  },
}
