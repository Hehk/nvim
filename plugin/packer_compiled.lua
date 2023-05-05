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
local package_path_str = "/Users/kyle/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/kyle/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/kyle/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/kyle/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/kyle/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
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
    path = "/Users/kyle/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/Users/kyle/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["copilot.vim"] = {
    loaded = true,
    path = "/Users/kyle/.local/share/nvim/site/pack/packer/start/copilot.vim",
    url = "https://github.com/github/copilot.vim"
  },
  harpoon = {
    loaded = true,
    path = "/Users/kyle/.local/share/nvim/site/pack/packer/start/harpoon",
    url = "https://github.com/ThePrimeagen/harpoon"
  },
  ["hop.nvim"] = {
    config = { "\27LJ\2\nc\0\0\4\2\4\0\b-\0\0\0009\0\0\0005\2\2\0-\3\1\0009\3\1\3=\3\3\2B\0\2\1K\0\1\0\0�\1�\14direction\1\0\1\22current_line_only\2\17AFTER_CURSOR\15hint_char1d\0\0\4\2\4\0\b-\0\0\0009\0\0\0005\2\2\0-\3\1\0009\3\1\3=\3\3\2B\0\2\1K\0\1\0\0�\1�\14direction\1\0\1\22current_line_only\2\18BEFORE_CURSOR\15hint_char1u\0\0\4\2\4\0\b-\0\0\0009\0\0\0005\2\2\0-\3\1\0009\3\1\3=\3\3\2B\0\2\1K\0\1\0\0�\1�\14direction\1\0\2\16hint_offset\3����\15\22current_line_only\2\17AFTER_CURSOR\15hint_char1r\0\0\4\2\4\0\b-\0\0\0009\0\0\0005\2\2\0-\3\1\0009\3\1\3=\3\3\2B\0\2\1K\0\1\0\0�\1�\14direction\1\0\2\16hint_offset\3\1\22current_line_only\2\18BEFORE_CURSOR\15hint_char1�\2\1\0\b\0\22\0,6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\3\0B\1\2\0016\1\0\0'\3\4\0B\1\2\0029\1\5\0016\2\6\0009\2\a\0029\2\b\2'\4\t\0'\5\n\0003\6\v\0005\a\f\0B\2\5\0016\2\6\0009\2\a\0029\2\b\2'\4\t\0'\5\r\0003\6\14\0005\a\15\0B\2\5\0016\2\6\0009\2\a\0029\2\b\2'\4\t\0'\5\16\0003\6\17\0005\a\18\0B\2\5\0016\2\6\0009\2\a\0029\2\b\2'\4\t\0'\5\19\0003\6\20\0005\a\21\0B\2\5\0012\0\0�K\0\1\0\1\0\1\nremap\2\0\6T\1\0\1\nremap\2\0\6t\1\0\1\nremap\2\0\6F\1\0\1\nremap\2\0\6f\5\bset\vkeymap\bvim\18HintDirection\rhop.hint\1\0\1\tkeys\28etovxqpdygfblzhckisuran\nsetup\bhop\frequire\0" },
    loaded = true,
    path = "/Users/kyle/.local/share/nvim/site/pack/packer/start/hop.nvim",
    url = "https://github.com/phaazon/hop.nvim"
  },
  ["kanagawa.nvim"] = {
    loaded = true,
    path = "/Users/kyle/.local/share/nvim/site/pack/packer/start/kanagawa.nvim",
    url = "https://github.com/rebelot/kanagawa.nvim"
  },
  ["lsp-zero.nvim"] = {
    loaded = true,
    path = "/Users/kyle/.local/share/nvim/site/pack/packer/start/lsp-zero.nvim",
    url = "https://github.com/VonHeikemen/lsp-zero.nvim"
  },
  ["lualine.nvim"] = {
    loaded = true,
    path = "/Users/kyle/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = true,
    path = "/Users/kyle/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "/Users/kyle/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["minimal.nvim"] = {
    loaded = true,
    path = "/Users/kyle/.local/share/nvim/site/pack/packer/start/minimal.nvim",
    url = "https://github.com/Yazeed1s/minimal.nvim"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/Users/kyle/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/Users/kyle/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/Users/kyle/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/kyle/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/nvim-tree/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/kyle/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  playground = {
    loaded = true,
    path = "/Users/kyle/.local/share/nvim/site/pack/packer/start/playground",
    url = "https://github.com/nvim-treesitter/playground"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/kyle/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["sg.nvim"] = {
    loaded = true,
    path = "/Users/kyle/.local/share/nvim/site/pack/packer/start/sg.nvim",
    url = "https://github.com/sourcegraph/sg.nvim"
  },
  ["sidebar.nvim"] = {
    loaded = true,
    path = "/Users/kyle/.local/share/nvim/site/pack/packer/start/sidebar.nvim",
    url = "https://github.com/sidebar-nvim/sidebar.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/Users/kyle/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["trouble.nvim"] = {
    config = { "\27LJ\2\n9\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\ftrouble\frequire\0" },
    loaded = true,
    path = "/Users/kyle/.local/share/nvim/site/pack/packer/start/trouble.nvim",
    url = "https://github.com/folke/trouble.nvim"
  },
  undotree = {
    loaded = true,
    path = "/Users/kyle/.local/share/nvim/site/pack/packer/start/undotree",
    url = "https://github.com/mbbill/undotree"
  },
  ["vim-commentary"] = {
    loaded = true,
    path = "/Users/kyle/.local/share/nvim/site/pack/packer/start/vim-commentary",
    url = "https://github.com/tpope/vim-commentary"
  },
  ["vim-cutlass"] = {
    config = { "\27LJ\2\n�\1\0\0\5\0\v\0\0226\0\0\0009\0\1\0009\0\2\0005\2\3\0'\3\4\0'\4\5\0B\0\4\0016\0\0\0009\0\1\0009\0\2\0'\2\6\0'\3\a\0'\4\b\0B\0\4\0016\0\0\0009\0\1\0009\0\2\0'\2\6\0'\3\t\0'\4\n\0B\0\4\1K\0\1\0\6D\6M\add\amm\6n\6d\6m\1\3\0\0\6n\6v\bset\vkeymap\bvim\0" },
    loaded = true,
    path = "/Users/kyle/.local/share/nvim/site/pack/packer/start/vim-cutlass",
    url = "https://github.com/svermeulen/vim-cutlass"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/Users/kyle/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/Users/kyle/.local/share/nvim/site/pack/packer/start/vim-surround",
    url = "https://github.com/tpope/vim-surround"
  },
  ["which-key.nvim"] = {
    config = { "\27LJ\2\nt\0\0\3\0\a\0\0156\0\0\0009\0\1\0+\1\2\0=\1\2\0006\0\0\0009\0\1\0)\1,\1=\1\3\0006\0\4\0'\2\5\0B\0\2\0029\0\6\0004\2\0\0B\0\2\1K\0\1\0\nsetup\14which-key\frequire\15timeoutlen\ftimeout\6o\bvim\0" },
    loaded = true,
    path = "/Users/kyle/.local/share/nvim/site/pack/packer/start/which-key.nvim",
    url = "https://github.com/folke/which-key.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: hop.nvim
time([[Config for hop.nvim]], true)
try_loadstring("\27LJ\2\nc\0\0\4\2\4\0\b-\0\0\0009\0\0\0005\2\2\0-\3\1\0009\3\1\3=\3\3\2B\0\2\1K\0\1\0\0�\1�\14direction\1\0\1\22current_line_only\2\17AFTER_CURSOR\15hint_char1d\0\0\4\2\4\0\b-\0\0\0009\0\0\0005\2\2\0-\3\1\0009\3\1\3=\3\3\2B\0\2\1K\0\1\0\0�\1�\14direction\1\0\1\22current_line_only\2\18BEFORE_CURSOR\15hint_char1u\0\0\4\2\4\0\b-\0\0\0009\0\0\0005\2\2\0-\3\1\0009\3\1\3=\3\3\2B\0\2\1K\0\1\0\0�\1�\14direction\1\0\2\16hint_offset\3����\15\22current_line_only\2\17AFTER_CURSOR\15hint_char1r\0\0\4\2\4\0\b-\0\0\0009\0\0\0005\2\2\0-\3\1\0009\3\1\3=\3\3\2B\0\2\1K\0\1\0\0�\1�\14direction\1\0\2\16hint_offset\3\1\22current_line_only\2\18BEFORE_CURSOR\15hint_char1�\2\1\0\b\0\22\0,6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\3\0B\1\2\0016\1\0\0'\3\4\0B\1\2\0029\1\5\0016\2\6\0009\2\a\0029\2\b\2'\4\t\0'\5\n\0003\6\v\0005\a\f\0B\2\5\0016\2\6\0009\2\a\0029\2\b\2'\4\t\0'\5\r\0003\6\14\0005\a\15\0B\2\5\0016\2\6\0009\2\a\0029\2\b\2'\4\t\0'\5\16\0003\6\17\0005\a\18\0B\2\5\0016\2\6\0009\2\a\0029\2\b\2'\4\t\0'\5\19\0003\6\20\0005\a\21\0B\2\5\0012\0\0�K\0\1\0\1\0\1\nremap\2\0\6T\1\0\1\nremap\2\0\6t\1\0\1\nremap\2\0\6F\1\0\1\nremap\2\0\6f\5\bset\vkeymap\bvim\18HintDirection\rhop.hint\1\0\1\tkeys\28etovxqpdygfblzhckisuran\nsetup\bhop\frequire\0", "config", "hop.nvim")
time([[Config for hop.nvim]], false)
-- Config for: vim-cutlass
time([[Config for vim-cutlass]], true)
try_loadstring("\27LJ\2\n�\1\0\0\5\0\v\0\0226\0\0\0009\0\1\0009\0\2\0005\2\3\0'\3\4\0'\4\5\0B\0\4\0016\0\0\0009\0\1\0009\0\2\0'\2\6\0'\3\a\0'\4\b\0B\0\4\0016\0\0\0009\0\1\0009\0\2\0'\2\6\0'\3\t\0'\4\n\0B\0\4\1K\0\1\0\6D\6M\add\amm\6n\6d\6m\1\3\0\0\6n\6v\bset\vkeymap\bvim\0", "config", "vim-cutlass")
time([[Config for vim-cutlass]], false)
-- Config for: which-key.nvim
time([[Config for which-key.nvim]], true)
try_loadstring("\27LJ\2\nt\0\0\3\0\a\0\0156\0\0\0009\0\1\0+\1\2\0=\1\2\0006\0\0\0009\0\1\0)\1,\1=\1\3\0006\0\4\0'\2\5\0B\0\2\0029\0\6\0004\2\0\0B\0\2\1K\0\1\0\nsetup\14which-key\frequire\15timeoutlen\ftimeout\6o\bvim\0", "config", "which-key.nvim")
time([[Config for which-key.nvim]], false)
-- Config for: trouble.nvim
time([[Config for trouble.nvim]], true)
try_loadstring("\27LJ\2\n9\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\ftrouble\frequire\0", "config", "trouble.nvim")
time([[Config for trouble.nvim]], false)

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