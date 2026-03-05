return {
   "mason-org/mason-lspconfig.nvim",
   opts = {},
   dependencies = {
      { "mason-org/mason.nvim", opts = {} },
      "neovim/nvim-lspconfig",
   },
   config = function()
      require("mason").setup()
      require("mason-lspconfig").setup()

      local installed = require("mason-lspconfig").get_installed_servers()
      local caps = require("blink.cmp").get_lsp_capabilities()

      for _, srv in ipairs(installed) do
         vim.lsp.config(srv, { capabilities = caps, })
         vim.lsp.enable(srv)
      end
   end
}
