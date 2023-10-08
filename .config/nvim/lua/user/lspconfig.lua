local lspconfig = require('lspconfig')

require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = {
    'sumneko_lua',
    'eslint',
    'html',
    'jsonls',
    'solargraph',
    'tailwindcss',
    'ruby_ls',
    'tsserver',
    'lua_ls',
    'pyright',
    'yamlls'
  }
})

require('mason-lspconfig').setup_handlers({
  function(server)
    lspconfig[server].setup({})
  end,
})
