local ok, _ = pcall(require, 'toggleterm')
if ok then
  require("toggleterm").setup{
    open_mapping = [[<c-\>]],
    size = 20
  }

    local Terminal  = require('toggleterm.terminal').Terminal
    local lazygit = Terminal:new({
        cmd = "lazygit",
        hidden = true,
        direction = 'float',
        close_on_exit = true,
    })

    function _lazygit_toggle()
      lazygit:toggle()
    end

    vim.api.nvim_set_keymap("n", "<leader>g", "<cmd>lua _lazygit_toggle()<CR>", {noremap = true, silent = true})
end
