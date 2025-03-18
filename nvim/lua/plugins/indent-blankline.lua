-- 缩进线
return {
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    config = function()
      require("ibl").setup({
--        show_current_context = true, -- 显示当前上下文
--        show_current_context_start = true, -- 显示当前上下文的开始
--        filetype_exclude = { "help", "terminal", "dashboard" }, -- 排除某些文件类型
--        buftype_exclude = { "terminal" }, -- 排除某些缓冲区类型
      })
    end
  }
}
