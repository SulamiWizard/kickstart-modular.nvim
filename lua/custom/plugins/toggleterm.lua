return {
  'akinsho/toggleterm.nvim',
  version = '*',
  config = function()
    require('toggleterm').setup {
      open_mapping = [[<c-\>]],
      start_in_insert = true,
      terminal_mappings = true,
      auto_close = true,
    }

    -- -- Terminal mode keymaps
    -- function _G.set_terminal_keymaps()
    --   local opts = { noremap = true }
    --
    --   -- Exit terminal mode using Ctrl+\ and switch back to normal mode
    --   vim.keymap.set('t', '<Esc>', [[<C-\><C-n>]], opts)
    -- end
    -- vim.cmd 'autocmd! TermOpen term://* lua set_terminal_keymaps()'
  end,
}
