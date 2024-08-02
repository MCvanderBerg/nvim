-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/christiaanvanderberg/.cache/nvim/packer_hererocks/2.1.1720049189/share/lua/5.1/?.lua;/Users/christiaanvanderberg/.cache/nvim/packer_hererocks/2.1.1720049189/share/lua/5.1/?/init.lua;/Users/christiaanvanderberg/.cache/nvim/packer_hererocks/2.1.1720049189/lib/luarocks/rocks-5.1/?.lua;/Users/christiaanvanderberg/.cache/nvim/packer_hererocks/2.1.1720049189/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/christiaanvanderberg/.cache/nvim/packer_hererocks/2.1.1720049189/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  LuaSnip = {
    loaded = true,
    path = "/Users/christiaanvanderberg/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/Users/christiaanvanderberg/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-cmdline"] = {
    loaded = true,
    path = "/Users/christiaanvanderberg/.local/share/nvim/site/pack/packer/start/cmp-cmdline",
    url = "https://github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/Users/christiaanvanderberg/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/Users/christiaanvanderberg/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/Users/christiaanvanderberg/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["dashboard-nvim"] = {
    config = {
      config = {
        shortcut = { {
            action = "Lazy update",
            desc = "Û∞ä≥ Update",
            group = "@property",
            key = "u"
          }, {
            action = "Telescope find_files",
            desc = "Files",
            group = "Label",
            icon = "Óàï ",
            icon_hl = "@variable",
            key = "f"
          }, {
            action = "Telescope app",
            desc = "ÔÄï Apps",
            group = "DiagnosticHint",
            key = "a"
          }, {
            action = "Telescope dotfiles",
            desc = "Ó¨© dotfiles",
            group = "Number",
            key = "d"
          } },
        week_header = {
          enable = true
        }
      },
      theme = "hyper"
    },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/christiaanvanderberg/.local/share/nvim/site/pack/packer/opt/dashboard-nvim",
    url = "https://github.com/nvimdev/dashboard-nvim"
  },
  ["gitsigns.nvim"] = {
    loaded = true,
    path = "/Users/christiaanvanderberg/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  harpoon = {
    loaded = true,
    path = "/Users/christiaanvanderberg/.local/share/nvim/site/pack/packer/start/harpoon",
    url = "https://github.com/ThePrimeagen/harpoon"
  },
  ["lazygit.nvim"] = {
    config = { "\27LJ\2\nL\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\1K\0\1\0\flazygit\19load_extension\14telescope\frequire\0" },
    loaded = true,
    path = "/Users/christiaanvanderberg/.local/share/nvim/site/pack/packer/start/lazygit.nvim",
    url = "https://github.com/kdheepak/lazygit.nvim"
  },
  ["lsp-zero.nvim"] = {
    loaded = true,
    path = "/Users/christiaanvanderberg/.local/share/nvim/site/pack/packer/start/lsp-zero.nvim",
    url = "https://github.com/VonHeikemen/lsp-zero.nvim"
  },
  ["lualine.nvim"] = {
    loaded = true,
    path = "/Users/christiaanvanderberg/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = true,
    path = "/Users/christiaanvanderberg/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "/Users/christiaanvanderberg/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["noice.nvim"] = {
    config = { "\27LJ\2\nè\24\0\0\t\0j\0ö\0016\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\23\0005\3\3\0004\4\0\0=\4\4\0035\4\6\0005\5\5\0=\5\a\0045\5\b\0=\5\t\0045\5\n\0=\5\v\0045\5\f\0=\5\r\0045\5\15\0005\6\14\0=\6\16\5=\5\17\0045\5\18\0=\5\19\0045\5\20\0=\5\21\4=\4\22\3=\3\a\0025\3\24\0=\3\25\0025\3\26\0004\4\0\0=\4\27\3=\3\28\0025\3\29\0005\4\30\0=\4\r\3=\3\31\0025\3+\0005\4 \0005\5!\0=\5\4\0045\5)\0004\6\6\0005\a\"\0>\a\1\0065\a#\0>\a\2\0065\a$\0>\a\3\0065\a%\0005\b&\0=\b'\a>\a\4\0065\a(\0>\a\5\6=\6*\5=\5\r\4=\4,\0035\4-\0005\5.\0=\5\4\0045\0055\0004\6\6\0005\a/\0>\a\1\0065\a0\0>\a\2\0065\a1\0>\a\3\0065\a2\0005\b3\0=\b'\a>\a\4\0065\a4\0>\a\5\6=\6*\5=\5\r\0045\0056\0=\0057\4=\0048\0035\0049\0005\5:\0=\5\4\0045\5;\0=\5\r\0045\5<\0=\0057\4=\4=\0035\4>\0005\5?\0=\5\4\0044\5\0\0=\5\r\4=\4@\3=\3A\0025\3B\0=\3C\0025\3E\0005\4D\0=\4F\0035\4G\0=\4H\0035\4I\0004\5\0\0=\5\4\4=\4J\0035\4K\0005\5L\0=\5M\0044\5\0\0=\5\4\4=\4N\0035\4O\0004\5\0\0=\5\4\4=\4P\0035\4Q\0005\5R\0005\6S\0=\6\22\0055\6T\0=\6U\5=\5\4\4=\4V\3=\3W\0025\3_\0005\4Z\0006\5X\0009\5Y\0059\5\19\5=\5[\0046\5\0\0'\a\\\0B\5\2\0029\5]\5=\5^\4=\4J\0035\4`\0=\4a\3=\3b\0025\3c\0=\3d\0025\3e\0=\3f\0024\3\0\0=\3g\0024\3\0\0=\3h\0024\3\0\0=\3i\0024\3\0\0=\3\22\2B\0\2\1K\0\1\0\vstatus\vroutes\nviews\fpresets\1\0\5\18bottom_search\1\19lsp_doc_border\1\15inc_rename\1\26long_message_to_split\1\20command_palette\1\vhealth\1\0\1\fchecker\2\rmarkdown\15highlights\1\0\6\18^%s*(Return:)\16@text.title\n{%S-}\15@parameter\22^%s*(Parameters:)\16@text.title\t@%S+\15@parameter\n|%S-|\20@text.reference\20^%s*(See also:)\16@text.title\1\0\2\nhover\0\15highlights\0\20%[.-%]%((%S-)%)\topen\15noice.util\f|(%S-)|\1\0\2\f|(%S-)|\0\20%[.-%]%((%S-)%)\0\bcmd\bvim\blsp\18documentation\16win_options\1\0\2\18concealcursor\6n\17conceallevel\3\3\1\2\0\0\14{message}\1\0\5\vformat\0\vrender\nplain\16win_options\0\tlang\rmarkdown\freplace\2\1\0\2\tview\nhover\topts\0\fmessage\1\0\3\tview\vnotify\topts\0\fenabled\2\14signature\14auto_open\1\0\4\rthrottle\0032\fluasnip\2\fenabled\2\ftrigger\2\1\0\4\tview\0\14auto_open\0\fenabled\2\topts\0\nhover\1\0\3\vsilent\1\topts\0\fenabled\2\roverride\1\0\3 cmp.entry.get_documentation\1\"vim.lsp.util.stylize_markdown\0011vim.lsp.util.convert_input_to_markdown_lines\1\rprogress\1\0\6\rprogress\0\18documentation\0\roverride\0\fmessage\0\14signature\0\nhover\0\1\0\5\rthrottle\4´’™’\n™’ÇÇ\4\16format_done\22lsp_progress_done\fenabled\2\vformat\17lsp_progress\tview\tmini\vnotify\1\0\2\fenabled\2\tview\vnotify\rcommands\ball\1\0\2\nenter\2\vformat\fdetails\1\0\3\tview\nsplit\topts\0\vfilter\0\verrors\1\0\1\freverse\2\1\0\1\nerror\2\1\0\2\nenter\2\vformat\fdetails\1\0\4\tview\npopup\topts\0\16filter_opts\0\vfilter\0\tlast\16filter_opts\1\0\1\ncount\3\1\1\0\1\bany\0\1\0\2\nevent\blsp\tkind\fmessage\1\2\0\0\5\1\0\2\nevent\rmsg_show\tkind\0\1\0\1\fwarning\2\1\0\1\nerror\2\1\0\1\nevent\vnotify\1\0\2\nenter\2\vformat\fdetails\1\0\4\tview\npopup\topts\0\16filter_opts\0\vfilter\0\fhistory\1\0\4\fhistory\0\verrors\0\tlast\0\ball\0\bany\1\0\1\bany\0\1\0\2\nevent\blsp\tkind\fmessage\tkind\1\2\0\0\5\1\0\2\nevent\rmsg_show\tkind\0\1\0\1\fwarning\2\1\0\1\nerror\2\1\0\1\nevent\vnotify\1\0\2\nenter\2\vformat\fdetails\1\0\3\tview\nsplit\topts\0\vfilter\0\rredirect\1\0\1\nevent\rmsg_show\1\0\2\tview\npopup\vfilter\0\14popupmenu\15kind_icons\1\0\3\fbackend\bnui\15kind_icons\0\fenabled\2\rmessages\1\0\6\16view_search\16virtualtext\14view_warn\vnotify\15view_error\vnotify\fenabled\2\tview\vnotify\17view_history\rmessages\1\0\15\rmarkdown\0\vnotify\0\fpresets\0\nviews\0\vroutes\0\fcmdline\0\14popupmenu\0\rmessages\0\rthrottle\4´’™’\n™’ÇÇ\4\rredirect\0\vhealth\0\rcommands\0\blsp\0\vstatus\0\vformat\0\vformat\ninput\1\0\2\tview\18cmdline_input\ticon\nÛ∞•ª \thelp\1\0\2\fpattern\20^:%s*he?l?p?%s+\ticon\bÔüï\blua\fpattern\1\0\3\fpattern\0\tlang\blua\ticon\bÓò†\1\4\0\0\16^:%s*lua%s+\20^:%s*lua%s*=%s*\14^:%s*=%s*\vfilter\1\0\3\fpattern\v^:%s*!\tlang\tbash\ticon\6$\14search_up\1\0\4\fpattern\b^%?\tlang\nregex\tkind\vsearch\ticon\fÔÄÇ ÔÑÇ\16search_down\1\0\4\fpattern\a^/\tlang\nregex\tkind\vsearch\ticon\fÔÄÇ ÔÑÉ\fcmdline\1\0\a\fcmdline\0\16search_down\0\thelp\0\ninput\0\blua\0\14search_up\0\vfilter\0\1\0\3\fpattern\a^:\tlang\bvim\ticon\bÔÅî\topts\1\0\4\tview\18cmdline_popup\topts\0\fenabled\2\vformat\0\nsetup\nnoice\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/christiaanvanderberg/.local/share/nvim/site/pack/packer/opt/noice.nvim",
    url = "https://github.com/folke/noice.nvim"
  },
  ["nui.nvim"] = {
    loaded = true,
    path = "/Users/christiaanvanderberg/.local/share/nvim/site/pack/packer/start/nui.nvim",
    url = "https://github.com/MunifTanjim/nui.nvim"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/Users/christiaanvanderberg/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/Users/christiaanvanderberg/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-notify"] = {
    loaded = true,
    path = "/Users/christiaanvanderberg/.local/share/nvim/site/pack/packer/start/nvim-notify",
    url = "https://github.com/rcarriga/nvim-notify"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "/Users/christiaanvanderberg/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/nvim-tree/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/Users/christiaanvanderberg/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/christiaanvanderberg/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/nvim-tree/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/christiaanvanderberg/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  playground = {
    loaded = true,
    path = "/Users/christiaanvanderberg/.local/share/nvim/site/pack/packer/start/playground",
    url = "https://github.com/nvim-treesitter/playground"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/christiaanvanderberg/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["rose-pine"] = {
    config = { "\27LJ\2\n9\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0\26colorscheme rose-pine\bcmd\bvim\0" },
    loaded = true,
    path = "/Users/christiaanvanderberg/.local/share/nvim/site/pack/packer/start/rose-pine",
    url = "https://github.com/rose-pine/neovim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/Users/christiaanvanderberg/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  undotree = {
    loaded = true,
    path = "/Users/christiaanvanderberg/.local/share/nvim/site/pack/packer/start/undotree",
    url = "https://github.com/mbbill/undotree"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/Users/christiaanvanderberg/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: rose-pine
time([[Config for rose-pine]], true)
try_loadstring("\27LJ\2\n9\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0\26colorscheme rose-pine\bcmd\bvim\0", "config", "rose-pine")
time([[Config for rose-pine]], false)
-- Config for: lazygit.nvim
time([[Config for lazygit.nvim]], true)
try_loadstring("\27LJ\2\nL\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\1K\0\1\0\flazygit\19load_extension\14telescope\frequire\0", "config", "lazygit.nvim")
time([[Config for lazygit.nvim]], false)
vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au BufRead * ++once lua require("packer.load")({'noice.nvim'}, { event = "BufRead *" }, _G.packer_plugins)]]
vim.cmd [[au VimEnter * ++once lua require("packer.load")({'dashboard-nvim'}, { event = "VimEnter *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
