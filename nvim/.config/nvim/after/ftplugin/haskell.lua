-- ~/.config/nvim/after/ftplugin/haskell.lua
local ht = require("haskell-tools")
local bufnr = vim.api.nvim_get_current_buf()
local opts = { noremap = true, silent = true, buffer = bufnr }

-- Hoogle search for the type signature of the definition under the cursor
vim.keymap.set("n", "<space>hs", ht.hoogle.hoogle_signature, opts)

-- Evaluate all code snippets
vim.keymap.set("n", "<space>ea", ht.lsp.buf_eval_all, opts)

-- Reload right pane
vim.keymap.set("n", "<leader>rr", function()
  vim.cmd("w") -- save file
  os.execute([[
    if [ "$(tmux display-message -p '#{window_zoomed_flag}')" = "1" ]; then
      tmux resize-pane -Z
    fi
    tmux select-pane -R \; send-keys ":r" Enter
  ]])
end, { noremap = true, silent = true, desc = "Reload right GHCi" })

-- Reload bottom pane
vim.keymap.set("n", "<leader>rb", function()
  vim.cmd("w")
  os.execute([[
    if [ "$(tmux display-message -p '#{window_zoomed_flag}')" = "1" ]; then
      tmux resize-pane -Z
    fi
    tmux select-pane -D \; send-keys ":r" Enter
  ]])
end, { noremap = true, silent = true, desc = "Reload bottom GHCi" })
