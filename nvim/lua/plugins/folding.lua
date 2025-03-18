return {
  {
    "kevinhwang91/nvim-ufo",
    event = "BufReadPost",
    dependencies = { 
      "kevinhwang91/promise-async",
      "nvim-treesitter/nvim-treesitter",
      "luukvbaal/statuscol.nvim",
    },
    init = function()
      vim.o.foldenable = true
      vim.o.foldcolumn = "1"
      vim.o.foldlevel = 99
      vim.o.foldlevelstart = 99
      vim.opt.fillchars = {
        fold = " ",
        foldopen = "",
        foldsep = " ",
        foldclose = "",
        stl = " ",
        eob = " ",
      }
    end,
    config = function()
      -- 配置 statuscol
      local builtin = require("statuscol.builtin")
      require("statuscol").setup({
        relculright = true,
        segments = {
          -- 先显示行号
          { text = { builtin.lnumfunc }, click = "v:lua.ScLa" },
          -- 然后是折叠图标
          { text = { builtin.foldfunc }, click = "v:lua.ScFa" },
          -- 最后是符号列
          {
            sign = { name = { ".*" }, maxwidth = 2, colwidth = 1 },
            click = "v:lua.ScSa"
          },
        }
      })

      -- UFO 配置
      require("ufo").setup({
        provider_selector = function()
          return { "treesitter", "indent" }
        end,
        open_fold_hl_timeout = 150,
        preview = {
          win_config = {
            border = { "", "─", "", "", "", "─", "", "" },
            winhighlight = "Normal:Folded",
            winblend = 0
          },
        },
        enable_get_fold_virt_text = true,
      })

      -- 设置折叠相关快捷键
      vim.keymap.set("n", "zR", require("ufo").openAllFolds)
      vim.keymap.set("n", "zM", require("ufo").closeAllFolds)
      vim.keymap.set("n", "zr", require("ufo").openFoldsExceptKinds)
      vim.keymap.set("n", "zm", require("ufo").closeFoldsWith)
    end,
  }
}
