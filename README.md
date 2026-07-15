# dotfiles.nvim

- My Neovim configurations.
- Package manager: [Lazy.nvim](https://github.com/folke/lazy.nvim).

## Configurations Structure

```text
~/.config/nvim/
├── init.lua
├── after
│   └── plugin
│       └── treesitter.lua
├── lsp
│   └── basedpyright.lua
└── lua
    ├── config
    │   ├── autocmds.lua
    │   ├── lazy.lua
    │   ├── mappings.lua
    │   └── options.lua
    └── plugins
        ├── autocompletion.lua
        ├── autopairs.lua
        ├── catppuccin.lua
        ├── colorful-menu.lua
        ├── colorizer.lua
        ├── comment-box.lua
        ├── everforest.lua
        ├── gitsigns.lua
        ├── gruvbox.lua
        ├── indent-blankline.lua
        ├── lsp.lua
        ├── lualine.lua
        ├── markview.lua
        ├── neoscroll.lua
        ├── onedark.lua
        ├── smear_cursor.lua
        ├── surround.lua
        ├── todo-comments.lua
        ├── tokyonight.lua
        ├── treesitter.lua
        └── which-key.lua

7 directories, 28 files
```

