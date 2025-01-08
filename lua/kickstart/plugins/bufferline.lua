return {
  {
    'akinsho/bufferline.nvim',
    version = '*',
    dependencies = 'nvim-tree/nvim-web-devicons',
    keys = {
      { '<S-L>', '<Cmd>BufferLineCycleNext<CR>', desc = 'Next tab' },
      { '<S-H>', '<Cmd>BufferLineCyclePrev<CR>', desc = 'Prev tab' },
      { '<leader>x', ':bdelete<CR>', desc = 'Close tab', { noremap = true, silent = true } },
      { '<leader>bp', '<Cmd>BufferLinePickClose<CR>', desc = 'Close tab picked' },
      { '<leader>bh', '<Cmd>BufferLineMovePrev<CR>', desc = 'Move Tab Prev' },
      { '<leader>bl', '<Cmd>BufferLineMoveNext<CR>', desc = 'Move Tab Next' },
      { '<leader>QH', '<Cmd>BufferLineCloseLeft<CR>', desc = 'Close Tabs To Left' },
      { '<leader>QL', '<Cmd>BufferLineCloseRight<CR>', desc = 'Close Tabs To Right' },
      { '<leader>QA', '<Cmd>BufferLineCloseOthers<CR>', desc = 'Close All Other Tabs' },
    },
    opts = {
      options = {
        -- mode = 'tabs',
      },
    },
  },
}
