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
        javascript = { 'oxfmt', 'prettierd', 'prettier', stop_after_first = true },
        javascriptreact = { 'oxfmt', 'prettierd', 'prettier', stop_after_first = true },
        typescript = { 'oxfmt', 'prettierd', 'prettier', stop_after_first = true },
        typescriptreact = { 'oxfmt', 'prettierd', 'prettier', stop_after_first = true },
        svelte = { 'oxfmt', 'prettier', stop_after_first = true },
        css = { 'oxfmt', 'prettier', stop_after_first = true },
        html = { 'oxfmt', 'prettier', stop_after_first = true },
        json = { 'oxfmt', 'prettier', stop_after_first = true },
        yaml = { 'oxfmt', 'prettier', stop_after_first = true },
        markdown = { 'oxfmt', 'prettier', stop_after_first = true },
        graphql = { 'oxfmt', 'prettier', stop_after_first = true },
        vue = { 'oxfmt', 'prettier', stop_after_first = true },
      },
    },
  },
}
