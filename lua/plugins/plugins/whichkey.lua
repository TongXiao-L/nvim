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
                name = " 󰈔 File",
                s = { ":w<CR>", " 󰆓 Save" },
                q = { ":wq<CR>", " 󰸧 Save & Quit" }
            },
            P = { ":Lazy<CR>", " 󰐱 Plugin" },
            Q = { ":q<CR>", " 󰗼 Quit" }
        }, { prefix = "<leader>" })
    end
}
