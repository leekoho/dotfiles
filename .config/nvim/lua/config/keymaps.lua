-- Command + C 映射到复制
-- vim.api.nvim_set_keymap('v', '<D-c>', '"+y', { noremap = true, silent = true })

-- Telescope
vim.api.nvim_set_keymap('n', 'ff', ':Telescope find_files<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'fg', ':Telescope live_grep<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'fb', ':Telescope buffers<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'fh', ':Telescope help_tags<CR>', { noremap = true, silent = true })

