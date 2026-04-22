local M = {}

local defaults = {
  bold_vert_split = false,
  dark_variant = 'main',
  disable_background = false,
  disable_float_background = false,
  disable_italics = false,
  dim_nc_background = false,
  light = false,

  groups = {
    background = 'background2',
    panel = 'background3',
    border = 'background3',
    comment = 'blueGray3',
    link = 'blue3',
    punctuation = 'blue3',

    error = 'pink3',
    hint = 'blue1',
    info = 'blue3',
    warn = 'yellow',

    git_add = 'teal1',
    git_change = 'blue2',
    git_delete = 'pink3',
    git_dirty = 'blue4',
    git_ignore = 'blueGray1',
    git_merge = 'blue2',
    git_rename = 'teal3',
    git_stage = 'blue1',
    git_text = 'teal2',

    headings = {
      h1 = 'teal2',
      h2 = 'yellow',
      h3 = 'pink3',
      h4 = 'pink2',
      h5 = 'blue1',
      h6 = 'blue2',
    },
  },
  highlight_groups = {},
}

local options = vim.deepcopy(defaults)

function M.get()
  return options
end

function M.setup(opts)
  opts = opts or {}

  if opts.groups and type(opts.groups.headings) == 'string' then
    opts.groups.headings = {
      h1 = opts.groups.headings,
      h2 = opts.groups.headings,
      h3 = opts.groups.headings,
      h4 = opts.groups.headings,
      h5 = opts.groups.headings,
      h6 = opts.groups.headings,
    }
  end

  options.user_variant = opts.dark_variant or nil
  options = vim.tbl_deep_extend('force', options, opts)
end

return M
