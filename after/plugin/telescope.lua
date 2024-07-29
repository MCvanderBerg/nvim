local builtin = require('telescope.builtin')

require('telescope').setup {
  defaults = {
    mappings = {
      i = {
        ["<C-j>"] = require('telescope.actions').move_selection_next,
        ["<C-k>"] = require('telescope.actions').move_selection_previous,
      },
      n = {
        ["<C-j>"] = require('telescope.actions').move_selection_next,
        ["<C-k>"] = require('telescope.actions').move_selection_previous,
      },
    },
    set_env = { ['COLORTERM'] = 'truecolor' }, -- Needed for proper highlight rendering
    winblend = 0,                              -- Transparency of floating window
    layout_config = {
      horizontal = { prompt_position = 'top' },
      vertical = { mirror = false },
    },
    sorting_strategy = 'ascending',
    color_devicons = true,
  },
}

--find in file directory
vim.keymap.set('n', '<leader>O', function()
  builtin.find_files()
end
, {})
vim.keymap.set('n', '<leader>o', builtin.buffers, {})
vim.api.nvim_set_keymap('n', '<leader>F', ':Telescope live_grep<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>f', function()
  builtin.current_buffer_fuzzy_find({
    theme = "cursor",  -- Change to "ivy" or "cursor" if needed
    previewer = false, -- Disable previewer if not needed
    layout_config = {
      width = 0.5,     -- Adjust the width of the window (value between 0 and 1)
      height = 0.5,    -- Adjust the height of the window (value between 0 and 1)
    },
  })
end)
vim.keymap.set('n', '<leader>fx', builtin.grep_string, {})

--find git git_files
vim.keymap.set('n', '<leader>gf', builtin.git_files, {})
vim.keymap.set('n', '<leader>gb', builtin.git_branches, {})
vim.keymap.set('n', '<leader>gs', builtin.git_stash, {})
vim.keymap.set('n', '<leader><leader>gc', builtin.git_status, {})
vim.keymap.set('n', '<leader><leader>gl', builtin.git_bcommits, {})
vim.keymap.set('n', '<leader>gl', builtin.git_commits, {})
