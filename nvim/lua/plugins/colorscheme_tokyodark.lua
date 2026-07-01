return {
  "tiagovla/tokyodark.nvim",
  priority = 1000, -- ensure it loads before other UI plugins
  opts = {
    transparent_background = true, -- set background to transparent
    gamma = 1.00, -- adjust the brightness of the theme
    styles = {
      comments = { italic = true }, -- style for comments
      keywords = { italic = true }, -- style for keywords
      identifiers = { italic = true }, -- style for identifiers
      functions = {}, -- style for functions
      variables = {}, -- style for variables
    },
    custom_highlights = function(highlights, palette)
      -- example: make functions bold
      -- highlights.Function = { fg = palette.orange, bold = true }
      return highlights
    end,
    custom_palette = function(palette)
      -- example: override background color
      -- palette.bg = "#1a1b26"
      return palette
    end,
    terminal_colors = true, -- enable terminal colors
  },
  config = function(_, opts)
    require("tokyodark").setup(opts)
    vim.cmd([[colorscheme tokyodark]])
  end,
}
