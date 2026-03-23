return {
  { -- Autoformat
    'stevearc/conform.nvim',
    event = { 'BufWritePre' },
    cmd = { 'ConformInfo' },
    keys = {
      {
        '<leader>f',
        function()
          require('conform').format { async = true, lsp_format = 'fallback' }
        end,
        mode = '',
        desc = '[F]ormat buffer',
      },
    },
    opts = {
      notify_on_error = true,
      format_on_save = false,
      formatters_by_ft = {
        lua = { 'stylua' },
        python = { 'isort', 'black' },
        go = { 'goimports', 'gofmt' },
        rust = { 'rustfmt', lsp_format = 'fallback' },
        -- You can use 'stop_after_first' to run the first available formatter from the list
        javascript = { 'oxfmt' },
        javascriptreact = { 'oxfmt' },
        typescript = { 'oxfmt' },
        typescriptreact = { 'oxfmt' },
        svelte = { 'oxfmt' },
        css = { 'oxfmt' },
        html = { 'oxfmt' },
        json = { 'oxfmt' },
        yaml = { 'oxfmt' },
        markdown = { 'oxfmt' },
        graphql = { 'oxfmt' },
        vue = { 'oxfmt' },
      },
    },
  },
}
