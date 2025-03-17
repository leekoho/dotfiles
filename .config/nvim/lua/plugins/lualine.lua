-- 底部状态栏插件
return {
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'kyazdani42/nvim-web-devicons' }, -- 可选，用于文件图标
    config = function()
     require('lualine').setup({
      options = {
        theme = 'auto', -- 自动选择主题
        component_separators = { left = '|', right = '|' }, -- 组件分隔符
        section_separators = { left = '', right = '' }, -- 部分分隔符
      },
      sections = {
        lualine_a = {'mode'}, -- 显示当前模式
        lualine_b = {'branch', 'diff', 'diagnostics'}, -- 显示 Git 分支、差异和诊断信息
        lualine_c = {'filename'}, -- 显示当前文件名
        lualine_x = {'encoding', 'fileformat', 'filetype'}, -- 显示编码、文件格式和文件类型
        lualine_y = {'progress'}, -- 显示当前光标位置
        lualine_z = {'location'} -- 显示光标所在行和列
      }
    })
    end
  } 
}
