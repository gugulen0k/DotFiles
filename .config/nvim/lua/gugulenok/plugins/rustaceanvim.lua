return {
  'mrcjkb/rustaceanvim',
  version = '^4', -- Recommended
  ft = 'rust',
  config = function ()
    local opts = { noremap = true, silent = true }

    vim.g.rustaceanvim = {
      -- Plugin configuration
      tools = {},
      -- LSP configuration
      server = {
        on_attach = function(_, bufnr)
          opts.buffer = bufnr

          opts.desc = "Show line diagnostics"
          vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float, opts) -- show diagnostics for line

          opts.desc = "Show documentation for what is under cursor"
          vim.keymap.set("n", "K", vim.lsp.buf.hover, opts) -- show documentation for what is under cursor
        end,
        default_settings = {
          -- rust-analyzer language server configuration
          ['rust-analyzer'] = {},
        },
      },
      -- DAP configuration
      dap = {},
    }
  end
}
