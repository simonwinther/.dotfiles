return {
  -- GitHub Copilot (inline suggestions)
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    build = ":Copilot auth",
    event = "InsertEnter",
    opts = {
      suggestion = {
        enabled = true,
        auto_trigger = true,
        debounce = 75,
        keymap = {
          -- pick keys that don't collide with cmp/snippets
          accept = "<M-l>", -- Alt/Meta+l
          accept_word = "<M-w>",
          accept_line = "<M-CR>",
          next = "<C-j>",
          prev = "<C-k>",
          dismiss = "<C-]>",
        },
      },
      panel = { enabled = false }, -- keep it inline like VS Code
      filetypes = {
        -- Tip: if noise in prose bothers you, flip these to false
        markdown = true,
        gitcommit = true,
        yaml = true,
        ["*"] = true,
      },
    },
    config = function(_, opts)
      require("copilot").setup(opts)

      -- Optional: make <Tab> accept Copilot *only when* a suggestion is visible.
      -- This plays nice with LazyVim's cmp/snippet Tab behavior.
      vim.keymap.set("i", "<Tab>", function()
        local ok, suggestion = pcall(require, "copilot.suggestion")
        if ok and suggestion.is_visible() then
          suggestion.accept()
        else
          -- fall back to normal Tab
          return vim.api.nvim_replace_termcodes("<Tab>", true, false, true)
        end
      end, { expr = true, silent = true, desc = "Accept Copilot if visible, else Tab" })

      -- If cmp's ghost_text distracts from Copilot's ghost text, disable it:
      local ok_cmp, cmp = pcall(require, "cmp")
      if ok_cmp then
        cmp.setup({
          experimental = { ghost_text = false },
        })
      end
    end,
  },

  -- CopilotChat (unchanged, but with a nicer default layout)
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    dependencies = { "zbirenbaum/copilot.lua" },
    cmd = { "CopilotChat", "CopilotChatOpen" },
    opts = {
      window = { layout = "float" },
    },
  },
}
