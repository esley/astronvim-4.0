return {
  {
    "elixir-tools/elixir-tools.nvim",
    version = "*",
    event = { "BufWritePre", "BufReadPre", "BufNewFile" },
    config = function()
      -- local elixirls = require "elixir.elixirls"
      require("elixir").setup {
        nextls = { enable = false },
        credo = { enable = true },
        elixirls = {
          -- format_on_save = true,
          -- formatters_by_ft = {
          --   elixir = { "mix_format" },
          -- },
          enable = false,
          -- on_attach = function(client, bufnr)
          --   vim.keymap.set("n", "<space>fp", ":ElixirFromPipe<cr>", { buffer = true, noremap = true })
          --   vim.keymap.set("n", "<space>tp", ":ElixirToPipe<cr>", { buffer = true, noremap = true })
          --   vim.keymap.set("v", "<space>em", ":ElixirExpandMacro<cr>", { buffer = true, noremap = true })
          -- end,
        },
      }
    end,
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
  },
}
