local builtin = require('telescope.builtin')

--find in file directory
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.api.nvim_set_keymap('n', '<leader>fs', ':Telescope live_grep<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>fw', builtin.current_buffer_fuzzy_find, {})

vim.keymap.set('n', '<leader>fx', builtin.grep_string, {})

--find git git_files
vim.keymap.set('n', '<leader>gf', builtin.git_files, {})
vim.keymap.set('n', '<leader>gb', builtin.git_branches, {})
