local map = vim.keymap.set
local builtin = require("telescope.builtin")


vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find_files' })
vim.keymap.set('n', '<leader>tg', builtin.git_files, { desc = 'Telescope git_files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
