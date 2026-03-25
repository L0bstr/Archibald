local dap = require("dap")
local dapui = require("dapui")

dapui.setup()

-- auto open/close UI with debug sessions
dap.listeners.after.event_initialized["dapui_config"] = function() dapui.open() end

-- design
vim.fn.sign_define("DapBreakpoint", { text = "●", texthl = "DapBreakpoint", linehl = "", numhl = "" })
vim.fn.sign_define("DapBreakpointCondition", { text = "◆", texthl = "DapBreakpointCondition", linehl = "", numhl = "" })
vim.fn.sign_define("DapLogPoint", { text = "▲", texthl = "DapLogPoint", linehl = "", numhl = "" })
vim.fn.sign_define("DapStopped", { text = "→", texthl = "DapStopped", linehl = "DapStoppedLine", numhl = "" })
vim.fn.sign_define("DapBreakpointRejected", { text = "✗", texthl = "DapBreakpointRejected", linehl = "", numhl = "" })

vim.api.nvim_set_hl(0, "DapBreakpoint", { fg = "#e51400" })
vim.api.nvim_set_hl(0, "DapBreakpointCondition", { fg = "#f5a623" })
vim.api.nvim_set_hl(0, "DapLogPoint", { fg = "#61afef" })
vim.api.nvim_set_hl(0, "DapStopped", { fg = "#98c379" })
vim.api.nvim_set_hl(0, "DapBreakpointRejected", { fg = "#888888" })

-- keymaps
vim.keymap.set("n", "<F5>",  dap.continue, { desc = "Debug continue" })
vim.keymap.set("n", "<F10>", dap.step_over, { desc = "Debug setp over" })
vim.keymap.set("n", "<F11>", dap.step_into, { desc = "Debug setp into" })
vim.keymap.set("n", "<F12>", dap.step_out, { desc = "Debug setp out" })
vim.keymap.set("n", "<leader>b",  dap.toggle_breakpoint, { desc = "Debug toggle breakpoint" })
vim.keymap.set("n", "<leader>dt", dapui.toggle, { desc = "Debug toggle ui" })
