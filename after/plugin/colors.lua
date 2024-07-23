function ColorMyPencils(color)
    color = color or "rose-pine"
    vim.cmd.colorscheme(color)

    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })


    -- Set Telescope highlights to match Rose Pine theme
    vim.api.nvim_set_hl(0, 'TelescopeBorder', { bg = 'NONE', fg = 'NONE' })
    vim.api.nvim_set_hl(0, 'TelescopePromptBorder', { bg = 'NONE', fg = 'NONE' })
    vim.api.nvim_set_hl(0, 'TelescopeResultsBorder', { bg = 'NONE', fg = 'NONE' })
    vim.api.nvim_set_hl(0, 'TelescopePreviewBorder', { bg = 'NONE', fg = 'NONE' })
    vim.api.nvim_set_hl(0, 'TelescopeNormal', { bg = 'NONE', fg = 'NONE' })
    vim.api.nvim_set_hl(0, 'TelescopePromptNormal', { bg = 'NONE', fg = 'NONE' })
    vim.api.nvim_set_hl(0, 'TelescopeResultsNormal', { bg = 'NONE', fg = 'NONE' })
    vim.api.nvim_set_hl(0, 'TelescopePreviewNormal', { bg = 'NONE', fg = 'NONE' })
    vim.api.nvim_set_hl(0, 'TelescopeTitle', { bg = 'NONE', fg = 'NONE' })
    vim.api.nvim_set_hl(0, 'TelescopePromptTitle', { bg = 'NONE', fg = 'NONE' })
    vim.api.nvim_set_hl(0, 'TelescopeResultsTitle', { bg = 'NONE', fg = 'NONE' })
    vim.api.nvim_set_hl(0, 'TelescopePreviewTitle', { bg = 'NONE', fg = 'NONE' })
end

ColorMyPencils()
