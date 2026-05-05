return { -- Highlight, edit, and navigate code
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  build = ':TSUpdate',
  opts = {
    -- Directory to install parsers and queries to (prepended to `runtimepath` to have priority)
    install_dir = vim.fn.stdpath 'data' .. '/site',
  },
  init = function()
    local parsers = {
      'bash',
      'c',
      'diff',
      'html',
      'lua',
      'luadoc',
      'markdown',
      'markdown_inline',
      'query',
      'vim',
      'vimdoc',
      'cpp',
      'css',
      'go',
      'groovy',
      'helm',
      'html',
      'java',
      'javascript',
      'json',
      'php',
      'python',
      'sql',
      'terraform',
      'svelte',
      'typescript',
      'tsx',
      'xml',
      'yaml',
    }
    local group = vim.api.nvim_create_augroup('MyTreesitter', { clear = true })
    vim.api.nvim_create_autocmd('FileType', {
      pattern = { '<filetype>' },
      group = group,
      callback = function() vim.treesitter.start() end,
    })

    vim.api.nvim_create_autocmd('User', {
      group = group,
      pattern = 'VeryLazy',
      once = true,
      callback = function() require('nvim-treesitter').install(parsers) end,
    })
  end,
}
