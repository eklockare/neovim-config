local lspconfig = require("lspconfig")

lspconfig.lua_ls.setup({
  settings = {
    Lua = {
      runtime = {
        version = "LuaJIT", -- Neovim uses LuaJIT
        path = vim.split(package.path, ";"),
      },
      diagnostics = {
        globals = { "vim" }, -- Recognize the `vim` global
      },
      workspace = {
        library = vim.api.nvim_get_runtime_file("", true), -- Make the server aware of Neovim runtime files
        checkThirdParty = false,
      },
      telemetry = { enable = false },
    },
  },
})
