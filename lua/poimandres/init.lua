--[[ require 'poimandres.highlights' ]]
local utils = require 'poimandres.utils'
local config = require 'poimandres.config'

local M = {}

function M.setup(opts)
  config.setup(opts)
end

function M.colorscheme()
  if vim.g.colors_name then
    vim.cmd 'hi clear'
  end

  vim.opt.termguicolors = true
  local scheme = vim.g.poimandres_scheme or 'poimandres'
  vim.g.colors_name = scheme

  local opts = config.get()
  local theme_mod = (scheme == 'poimandres-light') and 'poimandres.theme-light' or 'poimandres.theme'
  local theme = require(theme_mod).get(opts)

  -- Set theme highlights
  for group, color in pairs(theme) do
    -- Skip highlight group if user overrides
    if opts.highlight_groups[group] == nil then
      utils.highlight(group, color)
    end
  end

  -- Set user highlights
  for group, color in pairs(opts.highlight_groups) do
    utils.highlight(group, color)
  end
end

return M
