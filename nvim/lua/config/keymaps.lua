-- 在视觉模式下，使用 < 和 > 缩进时保持选择
vim.keymap.set('v', '<', '<gv')
vim.keymap.set('v', '>', '>gv')

-- 在可视模式下移动选中的文本
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

-- 在正常模式下上下移动行
vim.keymap.set('n', '<A-j>', ':m .+1<CR>==')
vim.keymap.set('n', '<A-k>', ':m .-2<CR>==')

-- 在插入模式下快速移动到行首和行尾
vim.keymap.set('i', '<C-b>', '<ESC>^i')
vim.keymap.set('i', '<C-e>', '<End>')
