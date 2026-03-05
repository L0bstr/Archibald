vim.opt.nu = true
vim.opt.relativenumber = true

-- vim.opt.autochdir is not reliable
vim.opt.autochdir = false
-- Get the first CLI argument
local path = vim.fn.argv(0)

if path ~= "" then
   local stat = vim.loop.fs_stat(path)
   local root

   if stat then
      if stat.type == "directory" then
         root = path
      else
         root = vim.fn.fnamemodify(path, ":h")
      end
      vim.cmd("cd " .. root)
   end
end

vim.opt.tabstop = 3
vim.opt.softtabstop = 3
vim.opt.shiftwidth = 3
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false

vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.termguicolors = true

vim.opt.scrolloff = 8

vim.opt.updatetime = 50

vim.diagnostic.config({
   virtual_text = true,
   signs = false,
   underline = true,
})

