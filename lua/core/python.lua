local Python = {}

function Python.disassemble_buffer(buf)
	-- TODO: Handle venv & other interpreters
	local command = string.format("python3 -c 'import dis; dis.dis(open(\"%s\").read())'", buf)
	local process = io.popen(command)

	if not process then
		return "Failed to disassemble buffer."
	end

	local result = process:read("*a")
	process:close()

	if not result or result == "" then
		return "No result from disassembling buffer."
	end

	return result
end

return Python
