local ok, _ = pcall(require, 'nvim-autopairs')
if ok then
    require("nvim-autopairs").setup{}
end