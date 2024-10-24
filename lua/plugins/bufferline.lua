return {
    {
        "willothy/nvim-cokeline",
        dependencies = {
            "nvim-lua/plenary.nvim", -- Required for v0.4.0+
            "stevearc/resession.nvim", -- Optional, for persistent history
        },
        config = true,
    },
    {
        "Bekaboo/dropbar.nvim",
        dependencies = {
            "nvim-telescope/telescope-fzf-native.nvim",
        },
    },
}
