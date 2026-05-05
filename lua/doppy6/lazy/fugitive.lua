return {
  'tpope/vim-fugitive',
  config = function()
    vim.keymap.set('n', '<leader>gs', vim.cmd.Git, { desc = 'Git Status' })
    local group = vim.api.nvim_create_augroup('Fugitive_group', {})
    vim.api.nvim_create_autocmd('BufWinEnter', {
      group = group,
      pattern = '*',
      callback = function()
        if vim.bo.ft ~= 'fugitive' then return end

        local bufnr = vim.api.nvim_get_current_buf()
        vim.keymap.set('n', '<leader>P', vim.cmd.Git 'push', { desc = 'Push to Repo', buffer = bufnr, remap = false })
      end,
    })
  end,
}
