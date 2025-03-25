-- Adds git related signs to the gutter, as well as utilities for managing changes
return {
  'lewis6991/gitsigns.nvim',
  config = function()
    local gitsigns = require 'gitsigns'
    gitsigns.setup {
      signs = {
        add = { text = '┃' },
        change = { text = '┃' },
        delete = { text = '_' },
        topdelete = { text = '‾' },
        changedelete = { text = '~' },
        untracked = { text = '┆' },
      },
      signs_staged = {
        add = { text = '┃' },
        change = { text = '┃' },
        delete = { text = '_' },
        topdelete = { text = '‾' },
        changedelete = { text = '~' },
        untracked = { text = '┆' },
      },
    }

    vim.api.nvim_set_hl(0, 'GitSignsAdd', { fg = '#2dc937', bold = true })
    vim.api.nvim_set_hl(0, 'GitSignsChange', { fg = '#db7b2b', bold = true })
    vim.api.nvim_set_hl(0, 'GitSignsDelete', { fg = '#cc3232', bold = true })
  end,
}
