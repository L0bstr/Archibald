return {
   "brenoprata10/nvim-highlight-colors",
   opts = {},
   config = function ()
      vim.opt.termguicolors = true
      require('nvim-highlight-colors').setup({})
   end
}
