return {
    {
        'catppuccin/nvim',
        name = 'catppuccin',
        priority = 1000,
        config = function()
            require('catppuccin').setup {
                term_colors = true,
                flavour = 'mocha',
                background = { -- :h background
                    light = 'latte',
                    dark = 'mocha',
                },
                transparent_background = false, -- disables setting the background color.
                color_overrides = {
                    mocha = {
                        base = '#1d2021',
                    },
                },
            }
        end,
    },
}
