return {
  "rmagatti/auto-session",
  config = function()
    local autosession = require("auto-session")

    autosession.setup({
      auto_restore_enabled = false,
      auto_session_suppress_dirs = { 
        "~",
        "~/dev",
      }
    })

    local keymap = vim.keymap

    keymap.set("n", "<leader>wr", "<cmd>SessionRestore<cr>", { desc = "Restore session in cwd" })
    keymap.set("n", "<leader>ws", "<cmd>SessionSave<cr>", { desc = "Save session for auto session root dir" })
  end,
}
