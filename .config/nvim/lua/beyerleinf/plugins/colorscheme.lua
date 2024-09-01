return {
  'projekt0n/github-nvim-theme',
  lazy = false,
  priority = 1000,
  config = function()
    require('github-theme').setup({
      
    })

    vim.cmd('colorscheme github_dark_default')
  end,
}

-- return {
--   "0xstepit/flow.nvim",
--   priority = 1000,
--   config = function() 
--     require("flow").setup{
--       transparent = false,
--       fluo_color = "pink",
--       mode = "normal",
--       aggressive_spell = false,
--     }
--
--     vim.cmd("colorscheme flow")
--   end
-- }
