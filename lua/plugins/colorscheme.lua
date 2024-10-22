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

return catppuccin
