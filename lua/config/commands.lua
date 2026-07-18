-- 'Gl' command to displays a compact, color-coded Git branch graph with relative commit details on a single line.
-- vim.api.nvim_create_user_command("Gl", 
-- 	'terminal git log --date=relative --format="\\%C(auto)\\%h\\%d \\%C(white)\\%s \\%C(cyan)\\%an \\%C(black)\\%C(bold)\\%cd\\%C(auto)" --graph --color=always', 
-- 	{desc = "Displays a compact, color-coded Git branch graph with relative commit details on a single line.",})

-- 'Gl' command to displays a compact, color-coded Git branch graph with relative commit details on a single line, in a temporary read-only buffer.
vim.api.nvim_create_user_command("Gl", function(opts)
		vim.cmd("new")
		local lines = vim.fn.systemlist({ 'git', 'log', '--date=relative', '--graph', '--color=always', "--format=%C(auto)%h%d %C(white)%s %C(cyan)%an %C(black)%C(bold)%cd%C(auto)" })
		vim.api.nvim_buf_set_lines(0, 0, -1, false, lines)
		vim.bo.buftype = "nofile"
		vim.bo.bufhidden = "wipe"
		vim.bo.swapfile = false
		-- vim.cmd("BaleiaColorize") -- make sure "m00qek/baleia.nvim" plugin is installed
		require("baleia").setup({}).once(vim.api.nvim_get_current_buf()) -- make sure "m00qek/baleia.nvim" plugin is installed
	end, 
	{desc = "Displays a compact, color-coded Git branch graph with relative commit details on a single line.",})

-- -- 'Gsh' command to shows the changes and metadata of a specific commit with color-coded syntax highlighting in a split terminal.
-- vim.api.nvim_create_user_command("Gsh", function(opts)
-- 		vim.cmd("split term://git show --color=always " .. opts.args)
-- 	end, {nargs = 1, desc = "Shows the changes and metadata of a specific commit with color-coded syntax highlighting."})

-- 'Gsh' command to shows the changes and metadata of a specific commit with color-coded syntax highlighting in a split terminal.
vim.api.nvim_create_user_command("Gsh", function(opts)
		vim.cmd("new")

		local cmd= string.format(
			"git show --color=always %s | delta --paging=never --color-only -n --features=plain --no-gitconfig --minus-style 'red' --plus-style 'green'",
			-- "git show --color=always %s | delta --paging=never --color-only -n --features=plain --no-gitconfig --minus-style 'auto auto' --plus-style 'auto auto'",
			-- "git show --color=always %s | delta --paging=never --color-only -n --features=plain --no-gitconfig --minus-style 'syntax' --plus-style 'syntax'",
			-- "git show --color=always %s | delta --paging=never --color-only -n --features=plain --no-gitconfig --minus-style 'syntax auto' --plus-style 'syntax auto'",
			-- "git show --color=always %s | delta --paging=never --color-only -n --features=plain --no-gitconfig",
			-- "git show --color=always %s",
			vim.fn.shellescape(opts.args)
		)

		local lines = vim.fn.systemlist(cmd)
		vim.api.nvim_buf_set_lines(0, 0, -1, false, lines)

		vim.bo.buftype = "nofile"
		vim.bo.bufhidden = "wipe"
		vim.bo.buflisted = false
		vim.bo.swapfile = false
		require("baleia").setup({}).once(vim.api.nvim_get_current_buf()) -- make sure "m00qek/baleia.nvim" plugin is installed
		vim.bo.modifiable = false

		vim.api.nvim_buf_set_name(0, "git-show:" .. opts.args)
	end, 
	{nargs = 1, desc = "Show a commit using git + delta"})

-- buffers_popup
vim.api.nvim_create_user_command("BuffersPopup", function()
		require("buffers_popup").toggle()
	end, { desc = "Toggle popup showing list of buffers" })
