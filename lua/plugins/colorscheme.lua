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
        require("catppuccin").setup({
            flavor = "mocha",
            term_colors = true,
            transparent_background = true,
        })
        vim.cmd.colorscheme("catppuccin")
    end,
}


local gruvbox = {
  "sainnhe/gruvbox-material",
  priority = 1000,
  config = function()
    vim.o.background = "dark" -- or "light" for light mode
    vim.cmd("let g:gruvbox_material_background= 'hard'")
    vim.cmd("let g:gruvbox_material_transparent_background=2")
    vim.cmd("let g:gruvbox_material_diagnostic_line_highlight=1")
    vim.cmd("let g:gruvbox_material_diagnostic_virtual_text='colored'")
    vim.cmd("let g:gruvbox_material_enable_bold=1")
    vim.cmd("let g:gruvbox_material_enable_italic=1")
    -- changing bg and border colors
    vim.api.nvim_set_hl(0, "FloatBorder", { link = "Normal" })
    vim.api.nvim_set_hl(0, "LspInfoBorder", { link = "Normal" })
    vim.api.nvim_set_hl(0, "NormalFloat", { link = "Normal" })



    vim.cmd([[colorscheme gruvbox-material]]) -- Set color scheme
  end,
}

return gruvbox
