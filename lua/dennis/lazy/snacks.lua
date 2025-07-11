-- -- lua/plugins/snacks.lua
-- return {
--     "folke/snacks.nvim",
--     version = "*",
--     priority = 1000,
--     dependencies = { "nvim-lua/plenary.nvim" },
--     config = function()
--         require("snacks").setup({
--             terminal  = { enabled = true },  -- ✅ correct
--             pairs     = { enabled = true },
--             scroll    = { enabled = true },
--             bufremove = { enabled = true },
--             on_open   = { enabled = true },
--             yank      = { enabled = true },
--         })
--     end,
-- }

-- lua/plugins/snacks.lua
return {
  "folke/snacks.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    require("snacks").setup({
      terminal = {
        enabled = true,
        shell = vim.fn.has("win32") == 1 and "cmd.exe" or nil, -- forces a working shell on Windows
      },
      pairs     = { enabled = true },
      scroll    = { enabled = true },
      yank      = { enabled = true },
      on_open   = { enabled = true },
      bufremove = { enabled = true },
    })

    -- Add a keymap as a backup if command isn't available
    vim.keymap.set("n", "<leader>t", function()
      require("snacks.terminal").toggle()
    end, { desc = "Toggle Snacks Terminal" })
    vim.api.nvim_set_keymap('t', '<Esc>', '<C-\\><C-n>', { noremap = true, silent = true })
  end,
}

