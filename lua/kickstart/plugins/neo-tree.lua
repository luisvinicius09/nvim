-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  cmd = 'Neotree',
  keys = {
    { '\\', ':Neotree reveal<CR>', desc = 'NeoTree reveal', silent = true },
  },
  opts = function()
    local neo_tree_width = 40

    vim.api.nvim_create_autocmd('WinResized', {
      group = vim.api.nvim_create_augroup('neo-tree-remember-width', { clear = true }),
      callback = function()
        for _, win in ipairs(vim.v.event.windows or {}) do
          if vim.api.nvim_win_is_valid(win) then
            local buf = vim.api.nvim_win_get_buf(win)
            if vim.bo[buf].filetype == 'neo-tree' then
              neo_tree_width = vim.api.nvim_win_get_width(win)
            end
          end
        end
      end,
    })

    return {
      close_if_last_window = true,
      event_handlers = {
        {
          event = 'file_opened',
          handler = function()
            require('neo-tree.command').execute { action = 'close' }
          end,
        },
      },
      window = {
        width = function()
          return neo_tree_width
        end,
      },
      filesystem = {
      window = {
        position = 'right',
        mappings = {
          ['\\'] = 'close_window',
        },
      },
      filtered_items = {
        visible = true,
        hide_dotfiles = false,
      },
    },
    }
  end,
}
