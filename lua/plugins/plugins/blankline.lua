return {
    "lukas-reineke/indent-blankline.nvim",
    event = { "BufReadPost", "BufWritePost", "BufNewFile" },
    config = function()
        require("indent_blankline").setup({})
    end
}
