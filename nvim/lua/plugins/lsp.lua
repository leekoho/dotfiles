-- LSP
return {
  {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
      "hrsh7th/nvim-cmp",
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "L3MON4D3/LuaSnip",
    },
    config = function()
      -- 配置 Mason
      require("mason").setup()
       -- gopls Go
      -- rust_analyzer Rust
      -- clangd C
      -- 定义需要安装的 LSP 服务器 
      local servers = { "pyright", "ts_ls", "volar" }
      require("mason-lspconfig").setup({
        automatic_installation = true,
        ensure_installed = servers,
      })

      -- 配置 LSP
      local lspconfig = require("lspconfig")
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      for _, server in ipairs(servers) do
        local config = {
          capabilities = capabilities,
        }
        
        -- 为 volar 添加特殊配置
        if server == "volar" then
          config.filetypes = { "vue" }
        end
        
        lspconfig[server].setup(config)
      end

      -- 配置补全引擎
      local cmp = require("cmp")
      cmp.setup({
				snippet = {
					expand = function(args)
						require("luasnip").lsp_expand(args.body)
          end,
        },
        mapping = {
					["<Tab>"] = cmp.mapping.select_next_item(),
          ["<S-Tab>"] = cmp.mapping.select_prev_item(),
          ["<CR>"] = cmp.mapping.confirm({ select = true }),
        },
        sources = cmp.config.sources({
					{ name = "nvim_lsp" },
          { name = "buffer" },
          { name = "path" },
        }),
      })

      -- 配置 LuaSnip
      require("luasnip").config.set_config({
				history = true,
        updateevents = "TextChanged,TextChangedI",
      })
      require("luasnip.loaders.from_vscode").lazy_load()
    end,
	},
}
