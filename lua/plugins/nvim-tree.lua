return {
	"nvim-tree/nvim-tree.lua",

	dependencies = { "stevearc/dressing.nvim" },

	config = function()
		local nvimtree = require("nvim-tree")
		nvimtree.setup({
			auto_reload_on_write = true,
			sync_root_with_cwd = true,
			update_focused_file = {
				enable = true,
			},
			view = {
				width = 25,
				side = "right",
				number = false,
				relativenumber = false,
			},

			filters = {
				dotfiles = false,
			},

			renderer = {
				add_trailing = false,
				group_empty = false,
				highlight_git = false,
				full_name = false,
				highlight_opened_files = "none",
				highlight_modified = "none",
				root_folder_label = ":~:s?$?/..?",
				indent_width = 2,

				indent_markers = {
					enable = true, -- enables the tree like line
					inline_arrows = true,
					icons = {
						corner = "└",
						edge = "│",
						item = "│",
						bottom = "─",
						none = " ",
					},
				},

				icons = {
					webdev_colors = true,
					git_placement = "before",
					modified_placement = "after",
					padding = " ",
					symlink_arrow = " ➛ ",
					show = {
						file = true,
						folder = true,
						folder_arrow = true,
						git = true,
						modified = true,
					},

					glyphs = {
						default = "",
						symlink = "",
						bookmark = "",
						modified = "●",
						folder = {
							arrow_closed = "",
							arrow_open = "",
							default = "",
							open = "",
							empty = "",
							empty_open = "",
							symlink = "",
							symlink_open = "",
						},

						git = {
							unstaged = "✗",
							staged = "✓",
							unmerged = "",
							renamed = "➜",
							untracked = "★",
							deleted = "",
							ignored = "◌",
						},
					},
				}, -- end of icons rendering

				special_files = {
					"Cargo.toml",
					"Makefile",
					"README.md",
					"readme.md",
				},
				symlink_destination = true,
			}, -- end of rendering

			ui = {
				confirm = {
					remove = true,
					trash = true,
				},
			},
		})
	end,
}
