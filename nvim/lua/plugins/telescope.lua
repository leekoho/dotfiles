-- 文件和代码搜索插件
return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      local telescope = require("telescope")
      telescope.setup({
        defaults = {
         -- 配置默认选项
	      },
      })
    end,
  },
}
