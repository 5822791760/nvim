# Install Everything
### For using neovim spectre and theme
```
brew install iterm2 neovim gnu-sed

# Recommend to use with lazygit
brew install lazygit
```

### Clone Config
```
git clone https://github.com/5822791760/nvim.git ~/.config/nvim
```

### Open to install
```
nvim
```

---

# Hotkey guide
```
<leader> = space
<leader>f = find files
<leader>s = Grep word
<leader>S = Search and Replace
<leader>w = Replace current word in file
<leader>r = Replace word and can use . to replace occurence
<leader>R = Same as <leader>r but for 'W'
<leader>e = file explorer
<leader>g = Toggle lazygit (NEED LAZYGIT INSTALLED)
```

## Plugin Hotkey
toggle term
```
<C-\> = Toggle term (bottom)
```

Comment
```
<leader>/ = Toggle comment
```

vim sandwich
```
saiw (surround bracket)
sbd (delete bracket)
srb (Replace bracket)
```

harpoon
```
<leader>a = Add Mark
<C-e> = Mark Explorer
<leader1> = Saved Mark 1
<leader2> = Saved Mark 2
<leader3> = Saved Mark 3
<leader4> = Saved Mark 4
```

undo tree
```
<leader>u = Toggle undo tree
```

---

# Total Plugin
```
                packer.nvim - Total plugins: 23
 ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
 • Comment.nvim
 • LuaSnip
 • cmp-nvim-lsp
 • gitsigns.nvim
 • harpoon
 • lsp-zero.nvim
 • mason-lspconfig.nvim
 • mason.nvim
 • nvim-autopairs
 • nvim-cmp
 • nvim-lspconfig
 • nvim-spectre
 • nvim-tmux-navigation
 • nvim-treesitter
 • onedark.nvim
 • packer.nvim
 • plenary.nvim
 • telescope.nvim
 • toggleterm.nvim
 • undotree
 • vim-fugitive
 • vim-illuminate
 • vim-sandwich

```

---

# Uninstall
```
# Linux / Macos (unix)
rm -rf ~/.config/nvim
rm -rf ~/.local/share/nvim

brew remove neovim gnu-sed
brew autoremove
```
