local M = {}

function M.setup(config)
  local lspconfig = require("lspconfig")

  lspconfig.lua_ls.setup({
    capabilities = config.capabilities,
    on_attach = config.on_attach,
    settings = {
      Lua = {
        -- make the language server recognize "vim" global
        diagnostics = {
          globals = {
            "vim",
          },
        },
        workspace = {
          -- make language server aware of runtime files
          library = {
            vim.fn.expand("$VIMRUNTIME/lua"),
            vim.fn.expand("$XDG_CONFIG_HOME") .. "/nvim/lua",
          },
        },
      },
    },
  })
end

return M
