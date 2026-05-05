return {
  'folke/zen-mode.nvim',
  opts = {},
  config = function() vim.keymap.set('n', '<leader>zz', vim.cmd.ZenMode, { desc = 'Lock In Gang' }) end,
}
