--return {
--  {
--    "mhartington/oceanic-next",
--    priority = 1000,
--    lazy = vim.g.colors_name ~= "OceanicNext",
--    config = function()
--      vim.g.colors_name = "OceanicNext" -- 设置颜色方案名称
--      vim.cmd.colorscheme("OceanicNext") -- 应用主题
--    end
--  }
--}
-- 配色主题
return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        flavour = "mocha", -- 可选：mocha, latte, frappe, macchiato
        transparent_background = false,
        integrations = {
          treesitter = true,
          cmp = true,
          lsp = {
            underlines = {
              errors = { "undercurl" },
              hints = { "strikethrough" },
              warnings = { "undercurl" },
              information = { "undercurl" },
            },
          },
        },
      })
      vim.cmd.colorscheme("catppuccin")
    end,
  },
}