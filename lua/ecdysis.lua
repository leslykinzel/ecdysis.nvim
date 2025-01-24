local Python = require("core.python")

local M = {}

M.setup = function()
	vim.api.nvim_create_user_command(
		"EcdysisDisassembleCurrentBuffer",
		function()
			require("ecdysis").open_view()
		end,
		{}
	)
end

local buf = nil

function M.open_view()
	local filepath = vim.api.nvim_buf_get_name(0)
	local filetype = vim.api.nvim_get_option_value("filetype", { buf = 0 })

	if filetype ~= "python" then
		if filetype == "" then
			filetype = "none"
		end

		vim.notify("Cannot disassemble this file. Expected: python, Received: " .. filetype, vim.log.levels.ERROR)
		return
	end

	local bytecode = Python.disassemble_buffer(filepath)

	buf = vim.api.nvim_create_buf(false, true)

	vim.api.nvim_buf_set_lines(buf, 0, -1, false, vim.split(bytecode, "\n"))

	vim.cmd("vsplit")

	local new_win = vim.api.nvim_get_current_win()
	vim.api.nvim_win_set_buf(new_win, buf)
end

return M
