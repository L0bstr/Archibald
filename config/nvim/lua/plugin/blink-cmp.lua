return {
   'saghen/blink.cmp',
   dependencies = {
      'rafamadriz/friendly-snippets',
      "ray-x/lsp_signature.nvim"
   },

   version = '1.*',

   ---@module 'blink.cmp'
   ---@type blink.cmp.Config
   opts_extend = { "sources.default" },
}
