return {
  'catgoose/nvim-colorizer.lua',
  event = 'BufReadPre',
  opts = {
    filetypes = { '*' },
    user_default_options = {
      names = false,
      css_fn = true,
      tailwind = {
        enable = true,
        update_names = true,
        lsp = {
          enable = true,
        },
      },
    },
  },
}
