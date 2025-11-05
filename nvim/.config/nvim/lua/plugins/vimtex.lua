return {
  "lervag/vimtex",
  lazy = false, -- load immediately
  init = function()
    -- Use Zathura as PDF viewer
    vim.g.vimtex_view_method = "zathura"

    -- Compile automatically using latexmk
    vim.g.vimtex_compiler_method = "latexmk"

    -- Optional: prevent auto-opening quickfix window
    vim.g.vimtex_quickfix_mode = 0

    -- Optional: use a local build directory
    vim.g.vimtex_compiler_latexmk = {
      build_dir = "build",
      callback = 1,
      continuous = 1,
      executable = "latexmk",
      options = {
        "-pdf",
        "-interaction=nonstopmode",
        "-synctex=1",
      },
      clean = 1,
    }
  end,
  config = function()
    vim.g.vimtex_autoview_scroll = true

    vim.api.nvim_create_user_command("VimtexAutoScroll", function()
      vim.g.vimtex_autoview_scroll = not vim.g.vimtex_autoview_scroll
      vim.notify("VimTeX auto-scroll " .. (vim.g.vimtex_autoview_scroll and "enabled" or "disabled"))
    end, {})
    local grp = vim.api.nvim_create_augroup("VimtexViewOnScroll__user", {}) -- no clear=true

    -- the below is a more complex version that dedupes scroll events to avoid
    -- excessive calls to VimtexView, both works, i just want to try out the version below first

    local last_topline_by_win = {}

    vim.api.nvim_create_autocmd("WinScrolled", {
      group = grp,
      callback = function(args)
        if not vim.g.vimtex_autoview_scroll then
          return
        end
        if vim.bo[args.buf].filetype ~= "tex" then
          return
        end
        if vim.b.vimtex == nil then
          return
        end

        -- only while compiling
        local is_running = (vim.fn.exists("*vimtex#compiler#is_running") == 1)
            and vim.fn["vimtex#compiler#is_running"]()
          or 1
        if is_running ~= 1 then
          return
        end

        -- dedupe: only fire when the viewport's topline actually changes (by enough)
        local win = 0
        local view = vim.fn.winsaveview()
        local topline = view.topline
        local last = last_topline_by_win[win]
        if last and math.abs(topline - last) < 6 then -- require ~3 lines of movement
          return
        end
        last_topline_by_win[win] = topline

        vim.cmd("silent! VimtexView")
      end,

      -- vim.api.nvim_create_autocmd("WinScrolled", {
      --   group = grp,
      --   callback = function(args)
      --     if not vim.g.vimtex_autoview_scroll then
      --       return
      --     end
      --     if vim.bo[args.buf].filetype ~= "tex" then
      --       return
      --     end
      --     if vim.b.vimtex == nil then
      --       return
      --     end
      --     local is_running = vim.fn.exists("*vimtex#compiler#is_running") == 1 and vim.fn["vimtex#compiler#is_running"]()
      --       or 1
      --     if is_running ~= 1 then
      --       return
      --     end
      --     vim.cmd("silent! VimtexView")
      --   end,
    })
  end,
}
