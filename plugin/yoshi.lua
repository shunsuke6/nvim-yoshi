vim.api.nvim_create_user_command("Yoshi", require("yoshi").show, {})
vim.cmd([[autocmd BufWritePost * :Yoshi]])
