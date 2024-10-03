-- disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- 24-bit colour
vim.opt.termguicolors = true

-- tiny-inline-diagnostic
vim.diagnostic.config { virtual_text = false }

-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Set to true if you have a Nerd Font installed and selected in the terminal
vim.g.have_nerd_font = true

-- [[ Setting options ]]
require 'options'

-- [[ Basic Keymaps ]]
require 'keymaps'

-- [[ Install `lazy.nvim` plugin manager ]]
require 'lazy-bootstrap'

-- [[ Configure and install plugins ]]
require 'lazy-plugins'

-- Set 4 space indent for js and ts files
-- vim.api.nvim_create_augroup('custom_js_ts_settings', { clear = true })
--
-- vim.api.nvim_create_autocmd('FileType', {
--   pattern = { 'javascript', 'typescript', 'javascriptreact', 'typescriptreact', 'tsx', 'jsx' },
--   group = 'custom_js_ts_settings',
--   callback = function()
--     vim.bo.shiftwidth = 2
--     vim.bo.tabstop = 2
--     vim.bo.softtabstop = 2
--     vim.bo.expandtab = true -- Use spaces instead of tabs
--   end,
-- })

vim.api.nvim_create_autocmd('FileType', {
  pattern = { 'c', 'cpp' },
  callback = function()
    vim.bo.shiftwidth = 4
    vim.bo.tabstop = 4
    vim.bo.softtabstop = 4 -- Make softtabstop align with shiftwidth
    vim.bo.expandtab = true -- Use spaces instead of tabs
  end,
})

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
