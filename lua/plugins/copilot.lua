return {
  -- Você também pode adicionar novos plugins aqui:
  -- Adicione plugins, a sintaxe preguiçosa
  -- "andweeb/presence.nvim",
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    config = function()
      require("copilot").setup {
        filetypes = {
          -- temporary disable for elixir files
          elixir = false,
        },
        panel = {
          enabled = true,
          auto_refresh = false,
          keymap = {
            accept = "<CR>",
            jump_prev = "[[",
            jump_next = "]]",
            refresh = "gr",
            open = "<M-CR>",
          },
        },
        suggestion = {
          auto_trigger = true,
          keymap = {
            accept = "<C-l>",
            prev = "<M-[>",
            next = "<C-]>",
            dismiss = "<C-]>",
          },
        },
      }
    end,
  },
}
