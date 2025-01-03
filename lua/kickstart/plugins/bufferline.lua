return {
  {
    'akinsho/bufferline.nvim',
    version = '*',
    dependencies = 'nvim-tree/nvim-web-devicons',
    keys = {
      { '<Tab>', '<Cmd>BufferLineCycleNext<CR>', desc = 'Next tab' },
      { '<S-Tab>', '<Cmd>BufferLineCyclePrev<CR>', desc = 'Prev tab' },
      { '<leader>bp', '<Cmd>BufferLinePickClose<CR>', desc = 'Close tab picked' },
      { '<leader>bq', ':bdelete<CR>', desc = 'Close tab', { noremap = true, silent = true } },
    },
    opts = {
      options = {
        -- mode = 'tabs',
      },
    },
  },
}
