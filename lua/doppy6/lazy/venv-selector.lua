return {
  'linux-cultist/venv-selector.nvim',
  dependencies = {
    { 'nvim-telescope/telescope.nvim', version = '*', dependencies = { 'nvim-lua/plenary.nvim' } }, -- optional: you can also use fzf-lua, snacks, mini-pick instead.
  },
  ft = 'python', -- Load when opening Python files
  keys = { { '<leader>v', '<cmd>VenvSelect<cr>', desc = 'Venv Selector' } }, -- Open picker on keymap
  opts = {
    options = {}, -- plugin-wide options
    search = {
      debugpy = {
        command = 'find "$HOME/.venv/" -type l -ipath "*/debugpy/bin/*" -name python',
      },
      fastapi = {
        command = 'find "$HOME/.venv/" -type l -ipath "*/fastapi/bin/*" -name python',
      },
      default = {
        command = 'find "/usr/bin" -type l -name python3',
      },
    }, -- custom search definitions
  },
}
