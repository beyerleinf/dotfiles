local status, ts = pcall(require, 'nvim-treesitter.configs')

if (not status) then return end

ts.setup {
  highlight = {
    enable = true,
    disable = {},
  },
  indent = {
    enable = true,
    disable = {},
  },
  ensure_installed = {
    'typescript',
    'tsx',
    'lua',
    'json',
    'html',
    'css',
    'scss',
    'javascript',
    'jsdoc',
    'dockerfile',
    'gitignore',
    'json5',
    'jsonc',
    'jsonnet',
    'latex',
    'markdown',
    'regex',
    'svelte',
    'yaml'
  },
  autotag = {
    enabled = true
  }
}
