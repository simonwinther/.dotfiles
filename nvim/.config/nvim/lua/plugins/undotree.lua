return {
  "mbbill/undotree",
  cmd = { "UndotreeToggle", "UndotreeShow", "UndotreeHide", "UndotreeFocus" },
  keys = {
    { "<leader>tu", ":UndotreeToggle<CR>", desc = "Toggle Undotree (local edit timeline)" },
  },
  init = function()
    -- Sensible defaults; feel free to tweak
    vim.g.undotree_SetFocusWhenToggle = 1
    vim.g.undotree_ShortIndicators = 1
    vim.g.undotree_SplitWidth = 40
    vim.g.undotree_WindowLayout = 3 -- tree on the right, diff on the left
    -- Make sure persistent undo is on so the timeline survives restarts
    if vim.fn.has("persistent_undo") == 1 then
      local undodir = vim.fn.stdpath("data") .. "/undodir"
      if vim.fn.isdirectory(undodir) == 0 then
        vim.fn.mkdir(undodir, "p")
      end
      vim.opt.undofile = true
      vim.opt.undodir = undodir
    end
  end,
}
