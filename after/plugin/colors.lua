function ColorMyPencils(color)
  color = color or "rose-pine"
  vim.cmd.colorscheme(color)

  vim.api.nvim_set_hl(0, "Normal", { bg = "#1a121c" })
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#0f0e18" })

  local Telescope_bg = "#150d17"
  local Telescope_fg = "#e0def4"
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
