local buffers_popup = {}

local state = {
	win = nil,
	buf = nil,
	augroup = nil,
}

local function close_popup()
	if state.win and vim.api.nvim_win_is_valid(state.win) then
		vim.api.nvim_win_close(state.win, true)
	end

	state.win = nil
	state.buf = nil

	if state.augroup then
		pcall(vim.api.nvim_del_augroup_by_id, state.augroup)
		state.augroup = nil
	end
end

function buffers_popup.toggle()
	if state.win and vim.api.nvim_win_is_valid(state.win) then
		close_popup()
		return
	end

	local lines = vim.split(vim.fn.execute("ls"), "\n", { plain = true })

	state.buf = vim.api.nvim_create_buf(false, true)

	vim.api.nvim_buf_set_lines(state.buf, 0, -1, false, lines)

	vim.bo[state.buf].buftype = "nofile"
	vim.bo[state.buf].bufhidden = "wipe"
	vim.bo[state.buf].swapfile = false
	vim.bo[state.buf].modifiable = false

	local width = 0
	for _, line in ipairs(lines) do
		width = math.max(width, vim.fn.strdisplaywidth(line))
	end

	width = math.min(width + 2, math.floor(vim.o.columns * 0.8))
	local height = math.min(#lines, math.floor(vim.o.lines * 0.7))

	state.win = vim.api.nvim_open_win(state.buf, false, {
		relative = "editor",
		style = "minimal",
		border = "rounded",
		focusable = false,

		width = width,
		height = height,

		row = math.floor((vim.o.lines - height) / 2),
		col = math.floor((vim.o.columns - width) / 2),
	})

	state.augroup = vim.api.nvim_create_augroup("BuffersPopup", { clear = true })

	vim.api.nvim_create_autocmd({
		"CmdlineEnter",
		"InsertEnter",
		"BufEnter",
		"WinEnter",
		"ModeChanged",
	}, {
		group = state.augroup,
		once = true,
		callback = close_popup,
	})
end

return buffers_popup
