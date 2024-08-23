local harpoon = require("harpoon")


-- REQUIRED
harpoon:setup({
  global_settings = {
    -- sets the marks upon calling `toggle` on the ui, instead of require `:w`.
    save_on_toggle = false,

    -- saves the harpoon file upon every change. disabling is unrecommended.
    save_on_change = true,

    -- sets harpoon to run the command immediately as it's passed to the terminal when calling `sendCommand`.
    enter_on_sendcmd = false,

    -- closes any tmux windows harpoon that harpoon creates when you close Neovim.
    tmux_autoclose_windows = false,

    -- filetypes that you want to prevent from adding to the harpoon list menu.
    excluded_filetypes = { "harpoon" },

    -- set marks specific to each git branch inside git repository
    mark_branch = false,

    -- enable tabline with harpoon marks
    tabline = false,
    tabline_prefix = "   ",
    tabline_suffix = "   ",
  }
})
-- REQUIRED

vim.keymap.set("n", "<leader>A", function() harpoon:list():add() end)
vim.keymap.set("n", "<leader>D", function() harpoon:list():remove() end)
vim.keymap.set("n", "<leader>e", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)
vim.keymap.set("n", "<leader>n", function() harpoon:list():next() end);
vim.keymap.set("n", "<leader>p", function() harpoon:list():prev() end);
vim.keymap.set("n", "<leader>a", function()
  harpoon:list():select(1)
end);
vim.keymap.set("n", "<leader>s", function()
  harpoon:list():select(2)
end);
vim.keymap.set("n", "<leader>d", function()
  harpoon:list():select(3)
end);
vim.keymap.set("n", "<leader>f", function()
  harpoon:list():select(4)
end);
