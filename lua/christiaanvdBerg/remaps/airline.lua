vim.keymap.set("n", "<C-n>", function()
  vim.cmd("bn")
end, { silent = true })

vim.keymap.set("n", "<C-n>", ":bn<CR>")
vim.keymap.set("v", "<C-n>", ":bn<CR>")

vim.keymap.set("n", "<C-p>", ":bp<CR>")
vim.keymap.set("v", "<C-p>", ":bp<CR>")

vim.keymap.set("n", "<leader>cw", ":close<CR>")
vim.keymap.set("v", "<leader>cw", ":close<CR>")

vim.keymap.set("n", "<leader>cb", ":bd<CR>")
vim.keymap.set("v", "<leader>cb", ":bd<CR>")
