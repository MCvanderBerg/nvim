require("christiaanvdBerg")

vim.g["airline#extensions#tabline#enabled"] = 1
vim.g["airline#extensions#tabline#left#sep"] = ' '
vim.g["airline#extensions#tabline#left#alt#sep"] = '|'
vim.g["airline#extensions#tabline#formatter"] = 'default'
vim.g["airline#extensions#bufferline#enabled"] = 1
vim.g["airline#extensions#bufferline#buffer#nr#show"] = 1
vim.g["airline#extensions#bufferline#buffer#nr#format"] = '%3s'
vim.g["airline#extensions#bufferline#buffers#tabline"] = 1

-- Additional Airline settings
vim.g.airline_powerline_fonts = 1 -- Use powerline fonts for a better appearance
vim.g.airline_theme = 'dark'      -- Set the theme (adjust as necessary)
