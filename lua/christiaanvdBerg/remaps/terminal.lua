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
