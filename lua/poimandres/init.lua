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
  vim.g.colors_name = 'poimandres'

  local opts = config.get()
  local theme = require('poimandres.theme').get(opts)

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
