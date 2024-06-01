local components = {
    line = function()
        local line = vim.fn.line(".")
        local total = vim.fn.line("$")
        local col = vim.fn.virtcol(".")
        return string.format("%d-%d : %d", line, total, col)
    end,
    progress = function()
        local line = vim.fn.line(".")
        local total = vim.fn.line("$")
        return string.format("%d%%%%", math.floor(line / total * 100))
    end
}

return {
    "nvim-lualine/lualine.nvim",
    config = function()
        require("lualine").setup({
            options = {
                globalstatus = true,
            },
            sections = {
                lualine_a = { "mode" },
                lualine_b = { "branch", "diff", "diagnostics" },
                lualine_c = { "filename" },
                lualine_x = {},
                lualine_y = { components.progress, components.line },
                lualine_z = { "filesize", "encoding", "filetype" }
            }
        })
    end
}
