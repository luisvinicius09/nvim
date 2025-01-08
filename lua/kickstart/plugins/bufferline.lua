return {
  {
    'akinsho/bufferline.nvim',
    version = '*',
    dependencies = 'nvim-tree/nvim-web-devicons',
    keys = {
      { '<S-H>', '<Cmd>BufferLineCycleNext<CR>', desc = 'Next tab' },
      { '<S-L>', '<Cmd>BufferLineCyclePrev<CR>', desc = 'Prev tab' },
      { '<leader>x', ':bdelete<CR>', desc = 'Close tab', { noremap = true, silent = true } },
      { '<leader>bp', '<Cmd>BufferLinePickClose<CR>', desc = 'Close tab picked' },
      { '<leader>bh', '<Cmd>BufferLineMovePrev<CR>', desc = 'Move Tab Prev' },
      { '<leader>bl', '<Cmd>BufferLineMoveNext<CR>', desc = 'Move Tab Next' },
    },
    opts = {
      options = {
        -- mode = 'tabs',
      },
    },
  },
}
