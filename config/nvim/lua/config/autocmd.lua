-- Highlight on yank for 500ms
vim.api.nvim_create_autocmd("TextYankPost", {
   callback = function()
      vim.highlight.on_yank({ higroup = "IncSearch", timeout = 100 })
   end,
})

-- automatic treesitter parsing
local parser_names = {}
local parsers = vim.api.nvim_get_runtime_file("parser/*.so", true)

for _, parser in ipairs(parsers) do
   local filename = vim.fn.fnamemodify(parser, ":t")
   local name = filename:gsub("%.so$", "")
   table.insert(parser_names, name)
end

vim.api.nvim_create_autocmd('FileType', {
   pattern = parser_names,
   callback = function() vim.treesitter.start() end,
})
