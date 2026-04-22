--- palette variants
local variants = {
  main = { -- main palette
    yellow = '#FFFAC2',
    teal1 = '#5DE4C7',
    teal2 = '#5FB3A1',
    teal3 = '#42675A',
    blue1 = '#89DDFF',
    blue2 = '#ADD7FF',
    blue3 = '#91B4D5',
    blue4 = '#7390AA',
    pink1 = '#FAE4FC',
    pink2 = '#FCC5E9',
    pink3 = '#D0679D',
    blueGray1 = '#A6ACCD',
    blueGray2 = '#767C9D',
    blueGray3 = '#506477',
    background1 = '#303340',
    background2 = '#1B1E28',
    background3 = '#171922',
    text = '#E4F0FB',
    white = '#FFFFFF',
    none = 'NONE',
  },
  light = { -- light palette
    yellow = '#d3ba00',
    teal1 = '#5FB3A1',
    teal2 = '#43a993',
    teal3 = '#50c6ad',
    blue1 = '#2363a4',
    blue2 = '#1d558e',
    blue3 = '#174779',
    blue4 = '#113a64',
    pink1 = '#A84A8A',
    pink2 = '#C061A3',
    pink3 = '#8C3A6D',
    blueGray1 = '#5B6378',
    blueGray2 = '#7A8399',
    blueGray3 = '#9AA3B5',
    background1 = '#FFFFFF',
    background2 = '#F4F7FB',
    background3 = '#E9EDF5',
    background4 = '#DDE3EE',
    text = '#1F2430',
    white = '#FFFFFF',
    none = 'NONE',
  },
-- #557329
-- #768C54
-- #D9BFA9
-- #F2F2F2
-- #404040
-- Theme primary colors */
--clr-primary-a0:  #5de4c7;
--clr-primary-a10: #50c6ad;
--clr-primary-a20: #43a993;

-- Theme surface colors */
--clr-surface-a0: #fff;
--clr-surface-a10: #f2f2f2;
--clr-surface-a20: #e4e4e4;
}

local config = require 'poimandres.config'

local function active_variant()
  local opts = config.get()
  return opts.light and variants.light or variants.main
end

return setmetatable({}, {
  __index = function(_, key)
    return active_variant()[key]
  end,
})
