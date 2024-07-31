function ColorMyPencils(color)
  color = color or "rose-pine"
  vim.cmd.colorscheme(color)

  vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

  local Telescope_bg = "#150d17"
  local Telescope_fg = "none"
  -- Set Telescope highlights to match Rose Pine theme
  vim.api.nvim_set_hl(0, 'TelescopeBorder', { bg = Telescope_bg, fg = Telescope_fg })
  vim.api.nvim_set_hl(0, 'TelescopePromptBorder', { bg = Telescope_bg, fg = Telescope_fg })
  vim.api.nvim_set_hl(0, 'TelescopeResultsBorder', { bg = Telescope_bg, fg = Telescope_fg })
  vim.api.nvim_set_hl(0, 'TelescopePreviewBorder', { bg = Telescope_bg, fg = Telescope_fg })
  vim.api.nvim_set_hl(0, 'TelescopeNormal', { bg = Telescope_bg, fg = Telescope_fg })
  vim.api.nvim_set_hl(0, 'TelescopePromptNormal', { bg = Telescope_bg, fg = Telescope_fg })
  vim.api.nvim_set_hl(0, 'TelescopeResultsNormal', { bg = Telescope_bg, fg = Telescope_fg })
  vim.api.nvim_set_hl(0, 'TelescopePreviewNormal', { bg = Telescope_bg, fg = Telescope_fg })
  vim.api.nvim_set_hl(0, 'TelescopeTitle', { bg = Telescope_bg, fg = Telescope_fg })
  vim.api.nvim_set_hl(0, 'TelescopePromptTitle', { bg = Telescope_bg, fg = Telescope_fg })
  vim.api.nvim_set_hl(0, 'TelescopeResultsTitle', { bg = Telescope_bg, fg = Telescope_fg })
  vim.api.nvim_set_hl(0, 'TelescopePreviewTitle', { bg = Telescope_bg, fg = Telescope_fg })
end

ColorMyPencils()
