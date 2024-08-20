function ColorMyPencils(color)
  color = color or "tokyonight-night"
  vim.cmd.colorscheme(color)

  --  local Telescope_bg = "#18101a"
  --  local Telescope_fg = "#e0def4"

  vim.api.nvim_set_hl(0, "Normal", { bg = Telescope_bg, fg = Telescope_fg })
  vim.api.nvim_set_hl(0, "CursorLine", { bg = Telescope_bg, fg = Telescope_fg })
  vim.api.nvim_set_hl(0, "CursorColumn", { bg = Telescope_bg, fg = Telescope_fg })
  vim.api.nvim_set_hl(0, "TabLine", { bg = Telescope_bg, fg = Telescope_fg })
  vim.api.nvim_set_hl(0, "SignColumn", { bg = Telescope_bg, fg = Telescope_fg })
  vim.api.nvim_set_hl(0, "CursorColumn", { bg = Telescope_bg, fg = Telescope_fg })
  vim.api.nvim_set_hl(0, "StatusLineNC", { bg = Telescope_bg, fg = Telescope_fg })
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = Telescope_bg, fg = Telescope_fg })
  vim.api.nvim_set_hl(0, "NormalNC", { bg = Telescope_bg, fg = Telescope_fg })

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
