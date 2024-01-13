return {
    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
        vim.o.timeout = true
        vim.o.timeoutlen = 0
    end,
    config = function()
        require("which-key").setup({})
        require("which-key").register({
            f = {
                name = " 󰈔 文件",
                s = { ":w<CR>", " 󰆓 保存" },
                q = { ":wq<CR>", " 󰸧 保存并退出" }
            },
            P = { ":Lazy<CR>", " 󰐱 插件" },
            Q = { ":q<CR>", " 󰗼 退出" }
        }, { prefix = "<leader>" })
    end
}
