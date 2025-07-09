return {
  "akinsho/toggleterm.nvim",
  version = "*",
  config = function()
    require("toggleterm").setup({
      size = 15,
      open_mapping = [[<leader>t]],
      hide_numbers = true,
      shade_filetypes = {},
      shade_terminals = true,
      shading_factor = 2,
      start_in_insert = true,
      insert_mappings = true,
      terminal_mappings = true,
      persist_size = true,
      direction = "horizontal", -- "vertical" | "float"
      close_on_exit = true,
      shell = vim.o.shell,
      auto_scroll = true,
    })

    -- Optional: create Terminal instance for lazygit, htop, etc.
    local Terminal = require("toggleterm.terminal").Terminal

    local lazygit = Terminal:new({ cmd = "lazygit", hidden = true, direction = "float" })
    vim.keymap.set("n", "<leader>gg", function() lazygit:toggle() end, { desc = "Toggle Lazygit" })

    local htop = Terminal:new({ cmd = "htop", hidden = true, direction = "float" })
    vim.keymap.set("n", "<leader>ht", function() htop:toggle() end, { desc = "Toggle Htop" })
  end,
}

