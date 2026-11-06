return {
        {
        "bjarneo/aether.nvim",
        name = "aether",
        priority = 1000,
        opts = {
            disable_italics = false,
            colors = {
                -- Backgrounds (adjusted for better contrast)
                bg           = "#181818", -- Main background
                darker_bg    = "#101010", -- Darkest background
                dark_bg      = "#141414", -- Sidebar / popup background
                lighter_bg   = "#242424", -- Cursorline / highlighted lines
                selection    = "#505050", -- Visual selection background

                -- Foregrounds (brightened for readability)
                fg           = "#f0f0f0", -- Main foreground
                light_fg     = "#ffffff", -- Light foreground
                bright_fg    = "#ffffff", -- Brightest foreground
                dark_fg      = "#dcdcdc", -- Secondary / dark foreground
                muted        = "#666666", -- Comments, line numbers

                -- Base accent colors (grayscale shades with better separation)
                red          = "#a0a0a0",
                orange       = "#a0a0a0",
                yellow       = "#c8c8c8",
                green        = "#b0b0b0",
                cyan         = "#9c9c9c",
                blue         = "#787878",
                purple       = "#8a8a8a",
                brown        = "#787878",

                -- Bright variants (lighter grays for strong syntax hierarchy)
                bright_red    = "#b8b8b8",
                bright_yellow = "#e0e0e0",
                bright_green  = "#cccccc",
                bright_cyan   = "#b4b4b4",
                bright_blue   = "#909090",
                bright_purple = "#a2a2a2",

                -- Cursor / selection
                cursor              = "#ffffff",
                foreground          = "#f0f0f0",
                background          = "#181818",
                selection_foreground  = "#ffffff",
                selection_background  = "#505050",
                accent              = "#787878",
            },
        },
        config = function(_, opts)
            require("aether").setup(opts)
            vim.cmd.colorscheme("aether")

            -- Enable hot reload
            require("aether.hotreload").setup()
        end,
    },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "aether",
        },
    },
}
