-- Customize None-ls sources

---@type LazySpec
return {
  "nvimtools/none-ls.nvim",
  opts = function(_, config)
    -- config variable is the default configuration table for the setup function call
    -- local null_ls = require "null-ls"

    local null_ls = require "null-ls"

    -- Check supported formatters and linters
    -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
    -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
    config.sources = {
      -- Set a formatter
      -- null_ls.builtins.formatting.stylua,
      null_ls.builtins.formatting.csharpier,
      null_ls.builtins.formatting.prettier.with {
        filetypes = { "javascript", "typescript", "vue" },
      },
      -- null_ls.builtins.formatting.prettier.with({
      -- 	filetypes = {
      -- 		"javascript",
      -- 		"javascriptreact",
      -- 		"typescript",
      -- 		"typescriptreact",
      -- 		"vue",
      -- 		"css",
      -- 		"scss",
      -- 		"less",
      -- 		"html",
      -- 		"json",
      -- 		"jsonc",
      -- 		"yaml",
      -- 		"markdown",
      -- 		"markdown.mdx",
      -- 		"graphql",
      -- 		"handlebars",
      -- 	},
      -- 	extra_filetypes = { "toml", "svelte" },
      -- }),
    }
    -- Check supported formatters and linters
    -- https://github.com/nvimtools/none-ls.nvim/tree/main/lua/null-ls/builtins/formatting
    -- https://github.com/nvimtools/none-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
    -- config.sources = {
    --   -- Set a formatter
    --   -- null_ls.builtins.formatting.stylua,
    --   -- null_ls.builtins.formatting.prettier,
    -- }
    return config -- return final config table
  end,
}
