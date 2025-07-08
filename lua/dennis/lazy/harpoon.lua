return {

  "ThePrimeagen/harpoon",
  branch = "harpoon2",
    dependencies = {"nvim-lua/plenary.nvim",
                    "nvim-telescope/telescope.nvim" },
  config = function()
    local harpoon = require("harpoon")
    local ui = require("harpoon.ui")
    local list = harpoon:list()

    -- REQUIRED initial setup
    harpoon:setup()

    -- Add file to Harpoon list
    vim.keymap.set("n", "<leader>a", function() list:add() end, { desc = "Harpoon: add file" })

    -- Toggle quick menu
    vim.keymap.set("n", "<C-e>", function() ui:toggle_quick_menu(list) end, { desc = "Harpoon: menu" })

    -- Jump to first 4 Harpooned files
    vim.keymap.set("n", "<M-1>", function() list:select(1) end, { desc = "Harpoon: go to 1" })
    vim.keymap.set("n", "<M-2>", function() list:select(2) end, { desc = "Harpoon: go to 2" })
    vim.keymap.set("n", "<M-3>", function() list:select(3) end, { desc = "Harpoon: go to 3" })
    vim.keymap.set("n", "<M-4>", function() list:select(4) end, { desc = "Harpoon: go to 4" })
  end,
}


