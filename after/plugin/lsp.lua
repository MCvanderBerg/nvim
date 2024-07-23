local lsp = require('lsp-zero')
local cmp = require('cmp')

lsp.preset('recommended')

lsp.set_preferences({
	sign_icons = {}
})

lsp.setup()
local cmp_select = {behavior = cmp.SelectBehavior.Select}
cmp.setup({
	snippet = {
		expand = function(args)
			require('luasnip').snippet_expand(args.body)
		end,
	},
	mapping = lsp.defaults.cmp_mappings({
		['<leader>k'] = cmp.mapping.select_prev_item(cmp_select),
		['<leader>j'] = cmp.mapping.select_next_item(cmp_select),
		['<CR>'] = cmp.mapping.confirm({ select = true }),
		['<C-Space>'] = cmp.mapping.complete(),
	}),
})




-- to learn how to use mason.nvim
-- read this: https://github.com/VonHeikemen/lsp-zero.nvim/blob/v3.x/doc/md/guide/integrate-with-mason-nvim.md
require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = {
	'tsserver',
	'eslint',
  },
  handlers = {
    function(server_name)
      require('lspconfig')[server_name].setup({})
    end,
  },
})

lsp.on_attach(function(client, bufnr)
	local opts = {buffer = bufnr, remap = false }

	vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
	vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
	vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
	vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
	vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
	vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
	vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
	vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
	vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
	vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
end)

lsp.setup()
	
