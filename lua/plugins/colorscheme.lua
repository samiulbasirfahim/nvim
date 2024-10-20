local function get_xresources_color(c)
  local command = io.popen("xrdb -query | grep " .. c .. " -m 1 | cut -f 2")
  local color = command:read("*l")
  return color
end

local bg = get_xresources_color("background")

local catppuccin = {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  config = function()
    if vim.g.neovide then
      require("catppuccin").setup({
        flavor = "mocha",
        term_colors = true,
        color_overrides = {
          all = {
            base = bg,
            mantle = bg,
          },
        },
      })
    else
      require("catppuccin").setup({
        flavor = "mocha",
        term_colors = true,
        transparent_background = true,
      })
    end

    vim.cmd.colorscheme("catppuccin")
  end,
}

-- return {
--   "AlphaTechnolog/pywal.nvim",
--   as = "pywal",
--   config = function()
--     local pywal = require("pywal")
--     pywal.setup()
--   end,
-- }
return catppuccin
