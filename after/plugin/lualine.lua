local lualine = require("lualine")
local harpoon = require("harpoon")

local dark_grey = "#3B3B3B"
local dark_green = "#AFAF87"
local light_green = "#D7D7AF"
local light_blue = "#9CDCFE"
local yellow_orange = '#D7BA7D'
local yellow = '#DCDCAA'
local salmon = '#D78787'

---@class color
---@field fg string
---@field bg string

---@class colorOptions
---@field n color
---@field i color
---@field v color
---@field V color

---@class colors
---@field active colorOptions
---@field inactive colorOptions

local colors = {
  active = {
    n = {
      fb = dark_grey,
      bg = dark_green,
    },
    i = {
      fb = dark_grey,
      bg = light_green,
    },
    v = {
      fb = dark_grey,
      bg = salmon,
    },
  },
  inactive = {
    n = {
      fb = light_blue,
      bg = dark_green,
    },
    i = {
      fb = dark_grey,
      bg = light_green,
    },
    v = {
      fb = dark_grey,
      bg = salmon,
    },
  },
}
colors.default = colors.inactive.n


---@param option "active" | "inactive"
---@return color
local function getColor(option)
  local mode = string.lower(vim.fn.mode())

  if (colors[option] == nil) then
    return colors.default
  end

  if (colors[option][mode] == nil) then
    return colors.default
  end

  return colors[option][mode]
end

local function updateHighlightGroups()
  vim.api.nvim_set_hl(0, "HarpoonInactive", { fg = getColor("inactive").fg, bg = getColor("inactive").bg })
  vim.api.nvim_set_hl(0, "HarpoonActive", { fg = getColor("active").fg, bg = getColor("active").bg })
end

vim.api.nvim_create_autocmd("ModeChanged", {
  pattern = "*:*",
  callback = updateHighlightGroups,
})
function Harpoon_files()
  local shortcutMap = {
    [1] = "a",
    [2] = "s",
    [3] = "d",
    [4] = "f",
  }
  local contents = {}
  local marks_length = harpoon:list():length()
  local current_file_path = vim.fn.fnamemodify(vim.fn.expand("%:p"), ":.")
  for index = 1, marks_length do
    local harpoon_file_path = harpoon:list():get(index).value

    local label = ""
    if vim.startswith(harpoon_file_path, "oil") then
      local dir_path = string.sub(harpoon_file_path, 7)
      dir_path = vim.fn.fnamemodify(dir_path, ":.")
      label = '[' .. dir_path .. ']'
    elseif harpoon_file_path ~= "" then
      label = vim.fn.fnamemodify(harpoon_file_path, ":t")
    end

    label = label ~= "" and label or "(empty)"
    if current_file_path == harpoon_file_path then
      contents[index] = string.format("%%#HarpoonActive# [ %s  %s ] ", string.upper(shortcutMap[index]), label)
    else
      contents[index] = string.format("%%#HarpoonInactive# %s %s ", string.lower(shortcutMap[index]), label)
    end
  end

  table.insert(contents, 1, " ")

  return table.concat(contents)
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
    lualine_z = { { Harpoon_files } },
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
