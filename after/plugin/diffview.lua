vim.keymap.set("n", "<leader>D", ":DiffviewOpen<cr>")
vim.keymap.set("n", "<leader>F", ":DiffviewFileHistory %<cr>")
vim.keymap.set("n", "<leader>q", ":tabclose<cr>")

local ok, _ = pcall(require, 'diffview.actions')
if ok then
    local actions = require("diffview.actions")
    require("diffview").setup({
        view = {
            default = {
                -- Config for changed files, and staged files in diff views.
                layout = "diff2_horizontal",
                winbar_info = false,          -- See |diffview-config-view.x.winbar_info|
            },
            merge_tool = {
                -- layout = "diff3_horizontal",
                layout = "diff1_plain",
                disable_diagnostics = true,
                winbar_info = true,
            },
        }

    })
end
