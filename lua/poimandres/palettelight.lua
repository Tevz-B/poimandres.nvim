--- palette variants
local variants = {
  main = { -- main palette
    yellow = '#6B5E00',
    teal1 = '#0FA38A',
    teal2 = '#3C8F7C',
    teal3 = '#6A8F86',
    blue1 = '#0077B6',
    blue2 = '#2A8FD6',
    blue3 = '#5F88B3',
    blue4 = '#7A96AD',
    pink1 = '#A84A8A',
    pink2 = '#C061A3',
    pink3 = '#8C3A6D',
    blueGray1 = '#5B6378',
    blueGray2 = '#7A8399',
    blueGray3 = '#9AA3B5',
    background1 = '#F4F7FB',
    background2 = '#E9EDF5',
    background3 = '#DDE3EE',
    text = '#1F2430',
    white = '#FFFFFF',
    none = 'NONE',
  },
}

local palette = {}

palette = variants.main

-- if vim.o.background == "light" then
-- 	palette = variants.main
-- else
-- 	palette = variants[(vim.g.poimandres_variant == "storm" and "storm") or "main"]
-- end

return palette
