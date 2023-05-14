# Install Everything

### Must have (Plugin manager)
```
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```
### For using neovim spectre and theme
```
brew install iterm2 neovim gnu-sed
```

### Clone Config
```
git clone https://github.com/5822791760/nvim.git ~/.config/nvim
```

### Open to install (There will be error when open first time)
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

vim fugitive (git)
```
<leader>g = Git Explorer
```

harpoon
```
<leader>a = Add Mark
<leader>h = Mark Explorer
<C-q> = Saved Mark 1
<C-w> = Saved Mark 2
<C-e> = Saved Mark 3
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
