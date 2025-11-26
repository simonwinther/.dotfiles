-- Description: Keybindings and configurations for Java development in Neovim

-- Compile Java File for A1
vim.keymap.set("n", "\\r", function()
  require("snacks.terminal")("ant build && ant -Dlocaltest=false test;read", {
    win = { position = "float" },
    start_insert = false,
    on_open = function()
      vim.cmd("stopinsert")
    end,
  })
end, {
  buffer = true,
  desc = "Run Ant Tests",
})
