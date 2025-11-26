if vim.g.vscode then
	return
end

require 'plugins.treesitter'
require 'plugins.gitsigns'.setup()
require 'plugins.comment'.setup()
require 'plugins.pairs'.setup()
require 'plugins.lualine'.setup()
require 'plugins.codeium'.setup()
require 'plugins.todo'.setup()
require 'plugins.telescope'
require 'plugins.oil'
require 'plugins.gen'
require 'plugins.lspconfig'
-- require 'plugins.coc'.setup()
