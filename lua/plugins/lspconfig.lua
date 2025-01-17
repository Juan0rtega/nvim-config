return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "williamboman/mason.nvim",
    "folke/neodev.nvim",
  },
  config = function()
    require("neodev").setup()
    require("lspconfig").lua_ls.setup({
      settings = {
        Lua = {
          workspace = {checkThirdParty = false}
        }
      }
  })
    require("lspconfig").pyright.setup({})
  end
}
