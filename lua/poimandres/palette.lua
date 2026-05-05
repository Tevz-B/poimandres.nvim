local function active_scheme()
  return vim.g.poimandres_scheme or vim.g.colors_name or 'poimandres'
end

local function active_palette()
  if active_scheme() == 'poimandres-light' then
    return require('poimandres.palette-light')
  elseif active_scheme() == 'poimandres-light-b' then
    return require('poimandres.palette-light-b')
  elseif active_scheme() == 'poimandres-light-c' then
    return require('poimandres.palette-light-c')
  end
  return require('poimandres.palette-dark')
end

return setmetatable({}, {
  __index = function(_, key)
    return active_palette()[key]
  end,
})
