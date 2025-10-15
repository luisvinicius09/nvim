return {
  -- Ref: https://github.com/rebelot/kanagawa.nvim
  {
    'rebelot/kanagawa.nvim',
    priority = 1000,
    lazy = false,
    config = function()
      require('kanagawa').load 'lotus'
    end,
  },

  -- { "EdenEast/nightfox.nvim" },

  -- {
  --   'ribru17/bamboo.nvim',
  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --     require('bamboo').setup {
  --       -- optional configuration here
  --     }
  --     require('bamboo').load()
  --   end,
  -- },

  --{
  -- 'folke/tokyonight.nvim',
  --init = function()
  -- Load the colorscheme here.
  -- Like many other themes, this one has different styles, and you could load
  -- any other, such as 'tokyonight-storm', 'tokyonight-moon', or 'tokyonight-day'.
  -- vim.cmd.colorscheme 'tokyonight-moon' -- moon | storm | day

  -- You can configure highlights by doing something like:
  -- vim.cmd.hi 'Comment gui=none'
  --end,
  --},

  -- { 'catppuccin/nvim', name = 'catppuccin', priority = 1000 },
}
