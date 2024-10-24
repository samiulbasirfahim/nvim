return {
    {

        "willothy/nvim-cokeline",
        dependencies = {
            "nvim-lua/plenary.nvim", -- Required for v0.4.0+
            "nvim-tree/nvim-web-devicons", -- If you want devicons
            "stevearc/resession.nvim", -- Optional, for persistent history
        },
        config = true,
    },
    {
        "Bekaboo/dropbar.nvim",
        -- optional, but required for fuzzy finder support
        dependencies = {
            "nvim-telescope/telescope-fzf-native.nvim",
        },
    },
}
