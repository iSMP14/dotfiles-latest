-- Filename: ~/github/dotfiles-latest/neovim/neobean/lua/plugins/markdown.lua
-- ~/github/dotfiles-latest/neovim/neobean/lua/plugins/markdown.lua

-- https://github.com/MeanderingProgrammer/markdown.nvim
-- lamw25wmal

-- Define color variables
local color1_bg = "#f265b5"
local color2_bg = "#37f499"
local color3_bg = "#04d1f9"
local color4_bg = "#a48cf2"
local color5_bg = "#f1fc79"
local color6_bg = "#f7c67f"
local color_fg = "#323449"

return {
  "MeanderingProgrammer/markdown.nvim",
  opts = {
    heading = {
      sign = false,
      icons = { "󰎤 ", "󰎧 ", "󰎪 ", "󰎭 ", "󰎱 ", "󰎳 " },

      -- Heading colors (when not hovered over), extends through the entire line
      vim.cmd(string.format([[highlight Headline1Bg guifg=%s guibg=%s]], color_fg, color1_bg)),
      vim.cmd(string.format([[highlight Headline2Bg guifg=%s guibg=%s]], color_fg, color2_bg)),
      vim.cmd(string.format([[highlight Headline3Bg guifg=%s guibg=%s]], color_fg, color3_bg)),
      vim.cmd(string.format([[highlight Headline4Bg guifg=%s guibg=%s]], color_fg, color4_bg)),
      vim.cmd(string.format([[highlight Headline5Bg guifg=%s guibg=%s]], color_fg, color5_bg)),
      vim.cmd(string.format([[highlight Headline6Bg guifg=%s guibg=%s]], color_fg, color6_bg)),

      -- Highlight for the heading and sign icons (symbol on the left)
      -- I have the sign disabled for now, so this makes no effect
      vim.cmd(string.format([[highlight Headline1Fg cterm=bold gui=bold guifg=%s]], color_fg)),
      vim.cmd(string.format([[highlight Headline2Fg cterm=bold gui=bold guifg=%s]], color_fg)),
      vim.cmd(string.format([[highlight Headline3Fg cterm=bold gui=bold guifg=%s]], color_fg)),
      vim.cmd(string.format([[highlight Headline4Fg cterm=bold gui=bold guifg=%s]], color_fg)),
      vim.cmd(string.format([[highlight Headline5Fg cterm=bold gui=bold guifg=%s]], color_fg)),
      vim.cmd(string.format([[highlight Headline6Fg cterm=bold gui=bold guifg=%s]], color_fg)),

      backgrounds = {
        "Headline1Bg",
        "Headline2Bg",
        "Headline3Bg",
        "Headline4Bg",
        "Headline5Bg",
        "Headline6Bg",
      },
      foregrounds = {
        "Headline1Fg",
        "Headline2Fg",
        "Headline3Fg",
        "Headline4Fg",
        "Headline5Fg",
        "Headline6Fg",
      },
    },
  },
}
