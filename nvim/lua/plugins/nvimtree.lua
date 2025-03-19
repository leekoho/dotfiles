-- 目录树
return {
	{
		"nvim-tree/nvim-tree.lua",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("nvim-tree").setup({
       	view = {
					width = 40, -- 设置文件树的宽度
				},
				renderer = {
					group_empty = true, -- 空文件夹显示为一个条目
					highlight_git = true,
					icons = {
						show = {
							git = true,
							folder = true,
							file = true,
							folder_arrow = true,
						},
					},
				},
				filters = {
					dotfiles = false, -- 显示隐藏文件
				},
        update_cwd = true, -- 更新当前工作目录
        update_focused_file = {
          enable = true, -- 自动定位到当前文件
          update_cwd = true -- 同时更新当前工作目录
        },
				git = {
					enable = true,
					ignore = false,
				},
			})
		end,
	},
}
