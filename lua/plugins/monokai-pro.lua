return {
    'loctvl842/monokai-pro.nvim',
    config = function()
        local monokai = require 'monokai-pro'
        monokai.setup {
            transparent_background = false,
            devicons = true,
            filter = 'spectrum', -- classic | octagon | pro | machine | ristretto | spectrum
            inc_search = 'background', -- underline | background
            background_clear = {},
            plugins = {
                bufferline = {
                    underline_selected = true,
                    underline_visible = false,
                    bold = false,
                },
                indent_blankline = {
                    context_highlight = 'pro', -- default | pro
                    context_start_underline = true,
                },
            },
            --- @param filter "classic" | "machine" | "octagon" | "pro" | "ristretto" | "spectrum"
            override = function(c)
                return {
                    IndentBlanklineChar = { fg = c.base.dimmed4 },
                }
            end,
            overrideScheme = function(cs, p, config, hp)
                local cs_override = {}
                local calc_bg = hp.blend(p.background, 0.75, '#000000')

                cs_override.editor = {
                    background = calc_bg,
                }
                return cs_override
            end,
        }
        monokai.load()
    end,
}
