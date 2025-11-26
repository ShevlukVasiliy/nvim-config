local vscode = require('vscode')

-- Быстрые переходы между группами редакторов
vim.keymap.set("n", "<C-h>", function() vscode.action("workbench.action.focusLeftGroup") end)
vim.keymap.set("n", "<C-l>", function() vscode.action("workbench.action.focusRightGroup") end)
vim.keymap.set("n", "<C-j>", function() vscode.action("workbench.action.focusBelowGroup") end)
vim.keymap.set("n", "<C-k>", function() vscode.action("workbench.action.focusAboveGroup") end)

-- Форматирование
vim.keymap.set("n", "==", function() vscode.call("editor.action.formatDocument") end)

-- Поиск по слову под курсором
vim.keymap.set("n", "<leader>f", function()
	vscode.action("workbench.action.findInFiles", { args = { query = vim.fn.expand("<cword>") } })
end)

-- Escape + сохранение
vim.keymap.set("i", "jk", function()
	vscode.action("vscode-neovim.escape")
	vscode.action("workbench.action.files.save")
end)
