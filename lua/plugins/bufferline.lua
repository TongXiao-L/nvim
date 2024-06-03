return {
    "akinsho/bufferline.nvim",
    version = "*",
    config = function()
        require("bufferline").setup({
            options = {
                indicator = {
                    style = "underline"
                },
                buffer_close_icon = "",
                left_trunc_marker = "",
                right_trunc_marker = "",
                offsets = {
                    {
                        filetype = "NvimTree",
                        text = "File Explorer",
                        text_align = "center",
                        highlight = "Keyword",
                        separator = false
                    }
                },
                custom_areas = {
                    right = function()
                        local result = {}
                        table.insert(result, { text = "Hello World!", fg = "#f38ba8" })
                        return result
                    end,
                },
            },
            highlights = {
                fill = {
                    bg = "#11111b",
                },
                background = {
                    fg = "#6c7086",
                    bg = "#181825",
                },
                close_button = {
                    fg = "#6c7086",
                    bg = "#181825",
                },
                close_button_visible = {
                    fg = "#cba6f7",
                    bg = "#1e1e2e",
                },
                close_button_selected = {
                    fg = "#cba6f7",
                    bg = "#1e1e2e",
                },
                buffer_visible = {
                    fg = "#cba6f7",
                    bg = "#1e1e2e",
                    bold = true,
                },
                buffer_selected = {
                    fg = "#cba6f7",
                    bg = "#1e1e2e",
                    italic = false,
                },
                numbers = {
                    fg = "#6c7086",
                    bg = "#181825",
                },
                numbers_visible = {
                    fg = "#cba6f7",
                    bg = "#1e1e2e",
                    bold = true,
                },
                numbers_selected = {
                    fg = "#cba6f7",
                    bg = "#1e1e2e",
                    italic = false,
                },
                modified = {
                    fg = "#6c7086",
                    bg = "#181825",
                },
                modified_visible = {
                    fg = "#cba6f7",
                    bg = "#1e1e2e",
                },
                modified_selected = {
                    fg = "#cba6f7",
                    bg = "#1e1e2e",
                },
                duplicate_selected = {
                    fg = "#cba6f7",
                    bg = "#1e1e2e",
                    bold = true,
                },
                duplicate_visible = {
                    fg = "#cba6f7",
                    bg = "#1e1e2e",
                    bold = true,
                },
                duplicate = {
                    fg = "#6c7086",
                    bg = "#181825",
                },
                separator_selected = {
                    fg = "#cba6f7",
                    bg = "#181825",
                },
                separator_visible = {
                    fg = "#cba6f7",
                    bg = "#181825",
                },
                separator = {
                    fg = "#11111b",
                    bg = "#11111b",
                },
                indicator_visible = {
                    fg = "#cba6f7",
                    bg = "#1e1e2e",
                },
                indicator_selected = {
                    fg = "#cba6f7",
                    bg = "#1e1e2e",
                },
                offset_separator = {
                    fg = "#11111b",
                    bg = "#11111b",
                },
                trunc_marker = {
                    fg = "#11111b",
                    bg = "#cba6f7",
                }
            }
        })
    end
}
