-- 自动括号
return {
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter", -- 在进入插入模式时加载
    config = function()
      local npairs = require("nvim-autopairs")
      npairs.setup({
        check_ts = true,  -- 检查 treesitter
        ts_config = {
          lua = { "string" },  -- 不在 lua 字符串中添加配对
          javascript = { "template_string" },  -- 不在 js 模板字符串中添加配对
        },
      })
    end,
  },
}