require('lsp_signature').setup({
   bind = true,
   floating_window = false,
   hint_enable = false,
})
require("blink.cmp").setup({
      keymap = { preset = 'default' },
      signature = {
         enabled = true,
         window = {
            show_documentation = true
         }
      },
      appearance = { nerd_font_variant = 'mono' },
      completion = {
         documentation = {
            auto_show = true,
            auto_show_delay_ms = 250
         },
         menu = {
            draw = {
               columns = {
                  { "kind_icon", "label", "label_description", gap = 1 },
                  { "kind" },
               }
            }
         }
      },
      sources = { default = { 'lsp', 'path', 'snippets', 'buffer' }, },
      fuzzy = { implementation = "prefer_rust_with_warning" }
   })
