return {
   'saghen/blink.cmp',
   dependencies = { 'rafamadriz/friendly-snippets' },

   version = '1.*',

   ---@module 'blink.cmp'
   ---@type blink.cmp.Config
   opts = {
      keymap = { preset = 'default' },
      signature = { enabled = true },

      appearance = {
         nerd_font_variant = 'mono'
      },

      completion = {
         documentation = {
            auto_show = true,
            auto_show_delay_ms = 250
         },
         menu = {
            draw = {
               columns = {
                  { "kind_icon", "label", "label_description", gap = 1 },
                  { "kind", "source_name", gap = 1 },
               }
            }
         }
      },

      sources = {
         default = { 'lsp', 'path', 'snippets', 'buffer' },
      },

      fuzzy = { implementation = "prefer_rust_with_warning" }
   },
   opts_extend = { "sources.default" },
   conifg = function ()
      require('lsp_signature').setup({
         bind = true,
         floating_window = true,
         hint_enable = true,
      })
   end
}
