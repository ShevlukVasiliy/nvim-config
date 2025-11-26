if vim.g.vscode then
	require('core.opts')
	require('core.bindings')
	require('core.vscode')
else
	require('core.opts')
	require('core.bindings')
	require('core.plugins')
	require('plugins.main')
end
