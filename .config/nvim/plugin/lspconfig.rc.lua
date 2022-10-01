local status, nvim_lsp = pcall(require, 'lspconfig')

if (not status) then return end

local protocol = require('vim.lsp.protocol')

local on_attach = function(client, bufnr)
  -- formatting
  if client.server_capabilities.documentFormattingProvider then
    vim.api.nvim_command [[ augroup Format ]]
    vim.api.nvim_command [[ autocmd! * <buffer> ]]
    vim.api.nvim_command [[ autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_seq_sync() ]]
    vim.api.nvim_command [[ augroup END ]]
  end
end

local function organize_imports()

  local params = {
    command = '_typescript.organizeImports',
    arguments = { vim.api.nvim_buf_get_name(0) },
    title = ''
  }
  vim.lsp.buf.execute_command(params)
end

nvim_lsp.tsserver.setup {
  on_attach = on_attach,
  filetypes = { 'typescript', 'typescriptreact', 'typescript.tsx' },
  cmd = { 'typescript-language-server', '--stdio' },
  commands = {
    OrganizeImports = {
      organize_imports,
      description = 'Organize Imports'
    }
  }
}

nvim_lsp.sumneko_lua.setup {
  on_attach = on_attach,
  settings = {
    Lua = {
      diagnostics = {
        -- get the language server to recognize the 'vim' global
        globals = { 'vim', 'nvim' }
      },
      workspace = {
        -- make the server aware of nvim runtime files
        library = vim.api.nvim_get_runtime_file('', true),
        checkThirdParty = false
      }
    }
  }
}

vim.keymap.set('n', '<C-S-o>', '<cmd>OrganizeImports<cr>')
