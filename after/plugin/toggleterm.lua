local ok, _ = pcall(require, 'toggleterm')
if ok then
  require("toggleterm").setup{
    open_mapping = [[<c-\>]],
  }
end