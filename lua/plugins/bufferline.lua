return {
    "akinsho/bufferline.nvim",
    version = "*",
    config = function()
        require("bufferline").setup({
            options = {
                mode = "tabs",
                indicator = {
                    style = "underline"
                },
            }
        })
    end
}
