-- 文件高亮插件
return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate", -- 确保在安装后运行 TSUpdate
		dependencies = {
			"nvim-treesitter/nvim-treesitter-textobjects", -- 提供文本对象支持
			"windwp/nvim-ts-autotag", -- 自动关闭标签（HTML/JSX 等）
		},
		config = function()
			require("nvim-treesitter.configs").setup({
				ensure_installed = {
					"bash",
					"c",
					"cpp",
					"go",
					"html",
					"javascript",
					"json",
					"lua",
					"python",
					"rust",
					"typescript",
					"yaml",
				}, -- 定义需要支持的语言
				sync_install = false, -- 异步安装语言解析器
				auto_install = true, -- 自动安装语言解析器
				highlight = {
					enable = true, -- 启用语法高亮
					additional_vim_regex_highlighting = false, -- 禁用旧的正则高亮
				},
				indent = {
					enable = true, -- 启用基于 Treesitter 的缩进
				},
				autotag = {
					enable = true, -- 启用自动标签关闭
				},
				textobjects = {
					enable = true, -- 启用文本对象
				},
			})
		end,
	},
}