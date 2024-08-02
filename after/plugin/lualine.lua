local timeTillWedding = function()
  local now = os.time()
  local target_date = os.time { year = 2024, month = 9, day = 7, hour = 15 }
  local diff = target_date - now

  local diffSeconds = string.format("%.0f", diff % 60)
  local diffMinutes = string.format("%.0f", (diff / 60) % 60)
  local diffHours = string.format("%.0f", (diff / 3600) % 24)
  local diffMonths = string.format("%.0f", (diff / (30 * 86400)))
  local diffDays = string.format("%.0f", (diff / 86400) % 30) + 30 * diffMonths
  return " Time to wedding:" .. diffDays .. " Days " .. diffHours .. ":" .. diffMinutes .. ":" .. diffSeconds
end

require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = '16color',
    component_separators = { left = '', right = '' },
    section_separators = { left = '', right = '' },

    --    component_separators = { left = '', right = '' },
    --    section_separators = { left = '', right = '' },
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    lualine_a = { 'mode' },
    lualine_c = { 'branch', 'diff' },
    lualine_b = { 'buffers' },
    lualine_x = { { timeTillWedding }, {
      'datetime',
      -- options: default, us, uk, iso, or your own format string ("%H:%M", etc..)
      style = ' || %H:%M:%S'

    }, {
      'datetime',
      -- options: default, us, uk, iso, or your own format string ("%H:%M", etc..)
      style = '|| %d:%B:%Y'

    } },
    lualine_y = { 'progress' },
    lualine_z = { 'location' }
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = { 'filename' },
    lualine_x = { 'filetype' },
    lualine_y = { 'location' },
    lualine_z = {}
  },
  winbar = {
    lualine_z = { "Hello" }
  },
  extensions = {
    'nvim-tree'
  },
}
