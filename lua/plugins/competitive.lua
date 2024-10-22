return {
	{
		"xeluxee/competitest.nvim",
		dependencies = "MunifTanjim/nui.nvim",
		init = function()
			require("competitest").setup({
				testcases_directory = ".testcases",
			})
		end,
		ft = "cpp",
	},
	{
		"kawre/leetcode.nvim",
		build = ":TSUpdate html",
		dependencies = {
			"nvim-telescope/telescope.nvim",
			"nvim-lua/plenary.nvim", -- required by telescope
			"MunifTanjim/nui.nvim",

			-- optional
			"nvim-treesitter/nvim-treesitter",
			"nvim-tree/nvim-web-devicons",
		},
		opts = {
			lang = "cpp",
			storage = {
				home = "~/dev/problemSolving/leetcode",
				cache = vim.fn.stdpath("cache") .. "/leetcode",
			},
		},
	},
}
