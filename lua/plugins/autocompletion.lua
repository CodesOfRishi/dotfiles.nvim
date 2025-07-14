return {
	'saghen/blink.cmp',
	event = "BufReadPre", -- lazy loading handled internally
	-- use a release tag to download pre-built binaries
	version = '1.*',
	-- OR build from source, requires nightly: https://rust-lang.github.io/rustup/concepts/channels.html#working-with-nightly-rust
	-- build = 'cargo build --release',
	-- If you use nix, you can build from source using latest nightly rust with:
	-- build = 'nix run .#build-plugin',

	---@module 'blink.cmp'
	---@type blink.cmp.Config
	---
	opts = {
		appearance = {
			-- 'mono' (default) for 'Nerd Font Mono' or 'normal' for 'Nerd Font'
			-- Adjusts spacing to ensure icons are aligned
			nerd_font_variant = 'mono'
		},

		-- (Default) Only show the documentation popup when manually triggered
		completion = { 
			documentation = { auto_show = false },

			-- Display a preview of the selected item on the current line
			ghost_text = { enabled = true },
		},

		-- Default list of enabled providers defined so that you can extend it 
		-- elsewhere in config, without redefining it, due to 'opts_extend' 
		sources = {
			-- default = { 'lsp', 'path', 'snippets', 'buffer' },
			default = { 'path', 'buffer' },
		},
		-- (Default) Rust fuzzy matcher for typo resistance and significantly better performance
		-- You may use a lua implementation instead by using `implementation = "lua"` or fallback to the lua implementation,
		-- when the Rust fuzzy matcher is not available, by using `implementation = "prefer_rust"`
		--
		-- See the fuzzy documentation for more information
		fuzzy = { implementation = "prefer_rust_with_warning" },
		keymap = {
			['<C-c>'] = { 'show' },
			['<C-q>'] = { 'hide' },
			['<CR>'] = { 'accept', 'fallback' },
			['<Up>'] = { 'select_prev', 'fallback' },
			['<S-Tab>'] = { 'select_prev', 'fallback' },
			['<Down>'] = { 'select_next', 'fallback' },
			['<Tab>'] = { 'select_next', 'fallback' },
			['<C-k>'] = { 'scroll_documentation_up', 'fallback' },
			['<C-j>'] = { 'scroll_documentation_down', 'fallback' },
		},
	},
	-- opts_extend = { "sources.default" }
}
