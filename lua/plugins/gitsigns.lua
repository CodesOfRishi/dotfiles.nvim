return {
	"lewis6991/gitsigns.nvim",
	opts = {
		on_attach = function(bufnr)
			local gitsigns = require('gitsigns')

			local function keymap(mode, l, r, opts)
				opts = opts or {}
				opts.buffer = bufnr
				vim.keymap.set(mode, l, r, opts)
			end

			-- jump to the next hunk
			keymap('n', ']c', function()
				if vim.wo.diff then
					vim.cmd.normal({']c', bang = true})
				else
					gitsigns.nav_hunk('next')
				end
			end,
			{ desc = "Jump to next the hunk" })

			-- jump to the previous hunk
			keymap('n', '[c', function()
				if vim.wo.diff then
					vim.cmd.normal({'[c', bang = true})
				else
					gitsigns.nav_hunk('prev')
				end
			end,
			{ desc = "Jump to the previous hunk" })

			-- Actions
			keymap('n', '<leader>hs', gitsigns.stage_hunk, { desc = "Stage the hunk under cursor" })
			keymap('n', '<leader>hr', gitsigns.reset_hunk, { desc = "Reset the hunk under curosr" })
			keymap('v', '<leader>hs', function() gitsigns.stage_hunk {vim.fn.line('.'), vim.fn.line('v')} end, { desc = "Stage the selected lines within a hunk" })
			keymap('v', '<leader>hr', function() gitsigns.reset_hunk {vim.fn.line('.'), vim.fn.line('v')} end, { desc = "Reset the selected lines within a hunk" })
			keymap('n', '<leader>hS', gitsigns.stage_buffer, { desc = "Stage all hunks in the buffer" })
			keymap('n', '<leader>hu', gitsigns.undo_stage_hunk, { desc = "Undo the previous staging" })
			keymap('n', '<leader>hR', gitsigns.reset_buffer, { desc = "Reset all hunks in the buffer" })
			keymap('n', '<leader>hp', gitsigns.preview_hunk, { desc = "Preview the hunk under the cursor" })
			keymap('n', '<leader>hb', function() gitsigns.blame_line{full=true} end, { desc = "Git  blame a hunk (2x for focus)" })
			keymap('n', '<leader>tb', gitsigns.toggle_current_line_blame, { desc = "Toggle Git blame for current line"})
			keymap('n', '<leader>hd', gitsigns.diffthis, { desc = "Diff against the index" })
			keymap('n', '<leader>hD', function() gitsigns.diffthis('~') end, { desc = "Diff against the last commit" })
			keymap('n', '<leader>td', gitsigns.toggle_deleted, { desc = "Toggle to show deleted version of the hunks"})

			-- Text object
			keymap({'o', 'x'}, 'ih', ':<C-U>Gitsigns select_hunk<CR>', { desc = "inner hunk (text object)"})
		 end
	},
}
