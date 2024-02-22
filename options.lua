-- set vim options here (vim.<first_key>.<second_key> = value)
--[[ return {
  opt = {
    -- set to true or false etc.
    relativenumber = true, -- sets vim.opt.relativenumber
    number = true, -- sets vim.opt.number
    spell = false, -- sets vim.opt.spell
    signcolumn = "auto", -- sets vim.opt.signcolumn to auto
    wrap = false, -- sets vim.opt.wrap
  },
  g = {
    mapleader = " ", -- sets vim.g.mapleader
    autoformat_enabled = true, -- enable or disable auto formatting at start (lsp.formatting.format_on_save must be enabled)
    cmp_enabled = true, -- enable completion at start
    autopairs_enabled = true, -- enable autopairs at start
    diagnostics_mode = 3, -- set the visibility of diagnostics in the UI (0=off, 1=only show in status line, 2=virtual text off, 3=all on)
    icons_enabled = true, -- disable icons in the UI (disable if no nerd font is available, requires :PackerSync after changing)
    ui_notifications_enabled = true, -- disable notifications when toggling UI elements
    resession_enabled = false, -- enable experimental resession.nvim session management (will be default in AstroNvim v4)
  },
}--]]
return function(local_vim)
  local_vim.opt.relativenumber = true
  local_vim.opt.number = true
  local_vim.opt.spell = false
  local_vim.opt.signcolumn = "auto"
  local_vim.opt.wrap = false
  local_vim.opt.tabstop = 4 -- A TAB character looks like 4 spaces
  local_vim.opt.expandtab = true -- Pressing the TAB key will insert spaces instead of a TAB character
  local_vim.opt.softtabstop = 4 -- Number of spaces inserted instead of a TAB character
  local_vim.opt.shiftwidth = 4 -- Number of spaces inserted when indenting

  local_vim.g.mapleader = " " -- sets vim.g.mapleader
  local_vim.g.autoformat_enabled = true -- enable or disable auto formatting at start (lsp.formatting.format_on_save must be enabled)
  local_vim.g.cmp_enabled = true -- enable completion at start
  local_vim.g.autopairs_enabled = true -- enable autopairs at start
  local_vim.g.diagnostics_mode = 3 -- set the visibility of diagnostics in the UI (0=off, 1=only show in status line, 2=virtual text off, 3=all on)
  local_vim.g.icons_enabled = true -- disable icons in the UI (disable if no nerd font is available, requires :PackerSync after changing)
  local_vim.g.ui_notifications_enabled = true -- disable notifications when toggling UI elements
  local_vim.g.resession_enabled = false -- enable experimental resession.nvim session management (will be default in AstroNvim v4)

  return local_vim
end
