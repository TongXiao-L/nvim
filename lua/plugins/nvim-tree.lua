return {
    "nvim-tree/nvim-tree.lua",
    config = function()
        require("nvim-tree").setup({
            on_attach = "default",
            hijack_cursor = true,
            disable_netrw = true,
            view = {
                width = 45
            },
            renderer = {
                group_empty = true,
                highlight_diagnostics = "name",
                highlight_opened_files = "icon",
                indent_markers = {
                    enable = true
                },
                icons = {
                    git_placement = "after",
                    modified_placement = "before",
                    diagnostics_placement = "after",
                    bookmarks_placement = "signcolumn"
                },
            },
            update_focused_file = {
                enable = true
            },
            diagnostics = {
                enable = true,
                show_on_dirs = true
            },
            modified = {
                enable = true
            },
            live_filter = {
                prefix = "Filter: ",
                always_show_folders = false
            }
        })
        vim.api.nvim_create_autocmd("QuitPre", {
            callback = function()
                local tree_wins = {}
                local floating_wins = {}
                local wins = vim.api.nvim_list_wins()
                for _, w in ipairs(wins) do
                    local bufname = vim.api.nvim_buf_get_name(vim.api.nvim_win_get_buf(w))
                    if bufname:match("NvimTree_") ~= nil then
                        table.insert(tree_wins, w)
                    end
                    if vim.api.nvim_win_get_config(w).relative ~= '' then
                        table.insert(floating_wins, w)
                    end
                end
                if 1 == #wins - #floating_wins - #tree_wins then
                    for _, w in ipairs(tree_wins) do
                        vim.api.nvim_win_close(w, true)
                    end
                end
            end
        })
    end
}
