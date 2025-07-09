-- return {
--   "ThePrimeagen/harpoon",
--   branch = "harpoon2",
--   dependencies = {
--     "nvim-lua/plenary.nvim",
--     "nvim-telescope/telescope.nvim",
--   },
--   config = function()
--     local harpoon = require("harpoon")
--     harpoon:setup()
--
--     local list = harpoon:list()
--     local telescope = require("telescope")
--
--     telescope.load_extension("harpoon")
--
--     -- Add file to Harpoon
--     vim.keymap.set("n", "<leader>a", function() list:add() end, { desc = "Harpoon: add file" })
--
--     -- Use Telescope to show Harpoon list instead of quick menu
--     vim.keymap.set("n", "<C-e>", function()
--       telescope.extensions.harpoon.marks()
--     end, { desc = "Harpoon: Telescope UI" })
--
--     -- Select files
--     vim.keymap.set("n", "<M-1>", function() list:select(1) end)
--     vim.keymap.set("n", "<M-2>", function() list:select(2) end)
--     vim.keymap.set("n", "<M-3>", function() list:select(3) end)
--     vim.keymap.set("n", "<M-4>", function() list:select(4) end)
--   end,
-- }

return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  lazy = false,  -- 👈 force it to load on startup
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim",
  },
  config = function()
    local harpoon = require("harpoon")

    harpoon:setup()

    local list = harpoon:list()
    local telescope = require("telescope")
    telescope.load_extension("harpoon")

    vim.keymap.set("n", "<leader>a", function() list:add() end, { desc = "Harpoon: add file" })
    vim.keymap.set("n", "<C-e>", function()
      telescope.extensions.harpoon.marks()
    end, { desc = "Harpoon: Telescope UI" })

    vim.keymap.set("n", "<M-1>", function() list:select(1) end)
    vim.keymap.set("n", "<M-2>", function() list:select(2) end)
    vim.keymap.set("n", "<M-3>", function() list:select(3) end)
    vim.keymap.set("n", "<M-4>", function() list:select(4) end)
  end,
}

