local lualine = require("lualine")
local harpoon = require("harpoon")

--- @param index number
local function getHarpoonFileName(index)
  local harpoon_file_path = harpoon:list():get(index).value
  return vim.fn.fnamemodify(harpoon_file_path, ':t')
end

lualine.setup {
  options = {
    icons_enabled = true,
    theme = 'everforest',
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
  tabline = {
    lualine_a = { 'mode' },
    lualine_b = { 'buffers' },
    lualine_z = { 'another_item', {
      "harpoon2",
      icon = " ",
      indicators = {
        "a " .. getHarpoonFileName(1),
        "s " .. getHarpoonFileName(2),
        "d " .. getHarpoonFileName(3),
        "f " .. getHarpoonFileName(4),
      },
      active_indicators = {
        "[ A " .. getHarpoonFileName(1) .. " ]",
        "[ S " .. getHarpoonFileName(2) .. " ]",
        "[ D " .. getHarpoonFileName(3) .. " ]",
        "[ F " .. getHarpoonFileName(4) .. " ]",
      },
      separator = "| ",
      no_harpoon = "Harpoon not loaded",
    } },
    --lualine_x = { { timeTillWedding }, {
    --  'datetime',
    --  -- options: default, us, uk, iso, or your own format string ("%H:%M", etc..)
    --  style = '%H:%M:%S'
    --},
    --{
    -- 'datetime',
    --- options: default, us, uk, iso, or your own format string ("%H:%M", etc..)
    --  style = '%d:%B:%Y'
    --} },
  },
  sections = {
    lualine_a = { 'mode' },
    lualine_b = { 'branch', 'diff' },
    lualine_y = { 'progress' },
    lualine_z = { 'location' }
  },
  inactive_sections = {
    lualine_a = { 'filename' },
    lualine_b = {},
    lualine_c = {},
    lualine_x = { 'filetype' },
    lualine_y = { 'location' },
    lualine_z = {}
  },
  extensions = {
    'nvim-tree'
  },
}
