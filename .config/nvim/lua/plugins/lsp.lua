return {
	{
	"VonHeikemen/lsp-zero.nvim",
	config = function()
     local lsp = require('lsp-zero')
     lsp.extend_lspconfig()

     require('lspconfig').lua_ls.setup({})

     local cmp = require('cmp')
     local cmp_select = {behavior = cmp.SelectBehavior.Select}
     local cmp_mappings = lsp.defaults.cmp_mappings({
         ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
         ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
         ['<C-y>'] = cmp.mapping.confirm({ select = true }),
         ["<C-Space>"] = cmp.mapping.complete(),
     })

     cmp_mappings['<Tab>'] = nil
     cmp_mappings['<S-Tab>'] = nil

     lsp.set_preferences({
         suggest_lsp_servers = false,
         sign_icons = {
             error = 'E',
             warn = 'W',
             hint = 'H',
             info = 'I'
         }
     })

     lsp.on_attach(function(client, bufnr)
         local opts = {buffer = bufnr, remap = false}

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

     local cmp_action = require('lsp-zero').cmp_action()

     require('luasnip.loaders.from_vscode').lazy_load()

     -- `/` cmdline setup.
     cmp.setup.cmdline('/', {
         mapping = cmp.mapping.preset.cmdline(),
         sources = {
             { name = 'buffer' }
         }
     })

     cmp.setup({
         sources = {
             { name = 'nvim_lsp' },
             { name = 'luasnip', keyword_length = 2 },
             { name = 'buffer',  keyword_length = 3 },
             { name = 'path' },
         },
         mapping = {
             ['<C-f>'] = cmp_action.luasnip_jump_forward(),
             ['<C-b>'] = cmp_action.luasnip_jump_backward(),
             ['<Tab>'] = cmp_action.luasnip_supertab(),
             ['<S-Tab>'] = cmp_action.luasnip_shift_supertab(),
         },
     })

     vim.diagnostic.config({
         virtual_text = true
     })
 end
    }
}
