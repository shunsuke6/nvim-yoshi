vim.api.nvim_create_user_command("Yoshi", require("plugins.yoshi").show, {})
vim.cmd([[autocmd BufWritePost * :Yoshi]])
