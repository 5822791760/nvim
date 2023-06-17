# Install Everything
### For using neovim spectre and theme
```
brew install iterm2 neovim gnu-sed
```

### Recommend to use with lazygit
```
brew install lazygit

# to make lazygit plugin work set this up
# ~/.bashrc
alias nvim='nvim --listen /tmp/nvim-server.pipe'

# ~/.config/lazygit/config.yml
os:
  editCommand: 'nvim'
  editCommandTemplate: '{{editor}} --server /tmp/nvim-server.pipe --remote-tab "$(pwd)/{{filename}}"'
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
telescope
```
<C-j> = navigate next
<C-k> = navigate previous
<ENTER> = accept
```

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

neoclip
```
<C-p> = open registry explorer
```

---

# Total Plugin
```
                packer.nvim - Total plugins: 24
 ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
 • Comment.nvim
 • LuaSnip
 • cmp-nvim-lsp
 • formatter.nvim
 • gitsigns.nvim
 • harpoon
 • lsp-zero.nvim
 • mason-lspconfig.nvim
 • mason.nvim
 • nvim-autopairs
 • nvim-cmp
 • nvim-lspconfig
 • nvim-neoclip.lua
 • nvim-spectre
 • nvim-tmux-navigation
 • nvim-treesitter
 • onedark.nvim
 • packer.nvim
 • plenary.nvim
 • telescope.nvim
 • toggleterm.nvim
 • undotree
 • vim-illuminate
 • vim-sandwich

```

---

# Uninstall

### Remove File
```
# Linux / Macos (unix)
rm -rf ~/.config/nvim
rm -rf ~/.local/share/nvim
```

### Remove Package from brew
```
brew remove neovim gnu-sed && brew autoremove
```
