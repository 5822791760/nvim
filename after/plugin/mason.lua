local ok, _ = pcall(require, 'mason-null-ls')
if ok then
    require ('mason-null-ls').setup({
        ensure_installed = {'autopep8'},
    })
end
