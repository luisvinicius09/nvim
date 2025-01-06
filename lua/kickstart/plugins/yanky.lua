return {
  {
    'gbprod/yanky.nvim',
    config = function()
      require('yanky').setup {
        ring = {
          permanent_wrapper = require('yanky.wrappers').remove_carriage_return,
        },
      }
    end,
  },
}
