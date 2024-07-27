require("christiaanvdBerg.remaps.terminal")
require("christiaanvdBerg.remaps.airline")
require("christiaanvdBerg.remaps.airline")
vim.g.mapleader = " "

vim.g.mapleader = " "
-- Function to open terminal at the bottom or move to existing terminal
local function toggle_terminal(split)
  -- Get list of open windows
  local windows = vim.api.nvim_tabpage_list_wins(0)

  -- Check if any window is a terminal
  for _, win in ipairs(windows) do
    local buf = vim.api.nvim_win_get_buf(win)
    if vim.api.nvim_buf_get_option(buf, 'buftype') == 'terminal' then
      -- If a terminal is found, move to that window and enter insert mode
      vim.api.nvim_set_current_win(win)
      vim.api.nvim_win_set_cursor(win, { 1, 0 }) -- Move cursor to the start of the terminal buffer
      vim.cmd('startinsert')                     -- Enter insert mode
      return
    end
  end

  -- If no terminal is found, open a new one at the bottom and enter insert mode
  if split == "vertical" then
    vim.cmd('belowright split | resize 10 | terminal')
  else
    vim.cmd('belowright vsplit | terminal')
  end
  vim.cmd('startinsert') -- Enter insert mode after opening the terminal
end

-- Function to send 'exit' command in terminal
_G.send_exit_to_terminal = function()
  local win = vim.api.nvim_get_current_win()
  local buf = vim.api.nvim_win_get_buf(win)
  if vim.api.nvim_buf_get_option(buf, 'buftype') == 'terminal' then
    local job_id = vim.b.terminal_job_id
    if job_id then
      -- Switch to normal mode in the terminal
      vim.cmd('startinsert')
      -- Send 'exit' command followed by <CR>
      vim.api.nvim_chan_send(job_id, "exit\r")
    end
  end
end
vim.keymap.set("n", "<leader>tj", function() toggle_terminal("vertical") end)
vim.keymap.set('t', '<leader>t', [[<C-\><C-n>:lua send_exit_to_terminal()<CR>]], { noremap = true, silent = true })

vim.keymap.set("n", "<leader>tl", function() toggle_terminal("horizontal") end)
vim.keymap.set('t', '<leader>t', [[<C-\><C-n>:lua send_exit_to_terminal()<CR>]], { noremap = true, silent = true })
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- currently not working, vim-with-me not installed
vim.keymap.set("n", "<leader>vwm", function()
  require("vim-with-me").StartVimWithMe()
end)

vim.keymap.set("n", "<leader>swm", function()
  require("vim-with-me").StopVimWithMe()
end)

vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")


vim.keymap.set("n", "<leader>d", "\"+d")
vim.keymap.set("v", "<leader>d", "\"+d")

vim.keymap.set("i", "<C-c>", function()
  vim.lsp.buf.format()
  vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Esc>", true, false, true), "n", true)
end)

vim.api.nvim_set_keymap('i', '<S-Tab>', '<C-d>', { noremap = true, silent = true })

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

vim.keymap.set("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })


local function check_or_open_window(direction)
  local prev_window_id = vim.api.nvim_get_current_win()
  local has_window = false
  local win_direction = vim.fn.winnr(direction)

  vim.cmd("wincmd " .. direction)

  local current_window_id = vim.api.nvim_get_current_win()

  if current_window_id == prev_window_id then
    local cases = {
      ["h"] = function()
        vim.cmd("leftabove vsplit")
      end,
      ["l"] = function()
        vim.cmd("rightbelow vsplit")
      end,
      ["j"] = function()
        vim.cmd("split")
        vim.cmd("wincmd j")
      end,
      ["k"] = function()
        vim.cmd("split")
      end,
    }
    local case = cases[direction]
    case()
  end
end



--My personal keymaps
vim.keymap.set("n", "<C-h>", function() check_or_open_window("h") end)
vim.keymap.set("n", "<C-k>", function() check_or_open_window("k") end)
vim.keymap.set("n", "<C-l>", function() check_or_open_window("l") end)
vim.keymap.set("n", "<C-j>", function() check_or_open_window("j") end)
