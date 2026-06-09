return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        flavour = "mocha",
        transparent_background = false,
        term_colors = true,
        styles = {
          comments = { "italic" },
          conditionals = {},
          miscs = {},
        },
        custom_highlights = function(colors)
          return {
            CursorLineNr = { fg = colors.pink, style = { "bold" } },
            FloatBorder = { fg = colors.pink },
            IncSearch = { bg = colors.pink, fg = colors.base },
            Search = { bg = colors.surface2, fg = colors.pink },
            Visual = { bg = colors.surface2 },
          }
        end,
      })
      vim.cmd.colorscheme("catppuccin")
    end,
  },
}
