return {
  -- customize alpha options
  {
    "goolord/alpha-nvim",
    opts = function(_, opts)
      -- customize the dashboard header
      opts.section.header.val = {

        "EEEEEEEEEEEEEEEEEEEEEE                 lllllll                                                             VVVVVVVV           VVVVVVVV iiii                          ",
        "E::::::::::::::::::::E                 l:::::l                                                             V::::::V           V::::::Vi::::i                         ",
        "E::::::::::::::::::::E                 l:::::l                                                             V::::::V           V::::::V iiii                          ",
        "EE::::::EEEEEEEEE::::E                 l:::::l                                                             V::::::V           V::::::V                               ",
        "E:::::E       EEEEEE    ssssssssss     l::::l     eeeeeeeeeeee  yyyyyyy           yyyyyyy                  V:::::V           V:::::Viiiiiii    mmmmmmm    mmmmmmm   ",
        "E:::::E               ss::::::::::s    l::::l   ee::::::::::::ee y:::::y         y:::::y                    V:::::V         V:::::V i:::::i  mm:::::::m  m:::::::mm ",
        "E::::::EEEEEEEEEE   ss:::::::::::::s   l::::l  e::::::eeeee:::::eey:::::y       y:::::y                      V:::::V       V:::::V   i::::i m::::::::::mm::::::::::m",
        "E:::::::::::::::E   s::::::ssss:::::s  l::::l e::::::e     e:::::e y:::::y     y:::::y    ---------------     V:::::V     V:::::V    i::::i m::::::::::::::::::::::m",
        "E:::::::::::::::E    s:::::s  ssssss   l::::l e:::::::eeeee::::::e  y:::::y   y:::::y     -:::::::::::::-      V:::::V   V:::::V     i::::i m:::::mmm::::::mmm:::::m",
        "E::::::EEEEEEEEEE      s::::::s        l::::l e:::::::::::::::::e    y:::::y y:::::y      ---------------       V:::::V V:::::V      i::::i m::::m   m::::m   m::::m",
        "E:::::E                   s::::::s     l::::l e::::::eeeeeeeeeee      y:::::y:::::y                              V:::::V:::::V       i::::i m::::m   m::::m   m::::m",
        "E:::::E       EEEEEEssssss   s:::::s   l::::l e:::::::e                y:::::::::y                                V:::::::::V        i::::i m::::m   m::::m   m::::m",
        "EE::::::EEEEEEEE:::::Es:::::ssss::::::sl::::::le::::::::e                y:::::::y                                  V:::::::V        i::::::im::::m   m::::m   m::::m",
        "E::::::::::::::::::::Es::::::::::::::s l::::::l e::::::::eeeeeeee         y:::::y                                    V:::::V         i::::::im::::m   m::::m   m::::m",
        "E::::::::::::::::::::E s:::::::::::ss  l::::::l  ee:::::::::::::e        y:::::y                                      V:::V          i::::::im::::m   m::::m   m::::m",
        "EEEEEEEEEEEEEEEEEEEEEE  sssssssssss    llllllll    eeeeeeeeeeeeee       y:::::y                                        VVV           iiiiiiiimmmmmm   mmmmmm   mmmmmm",
        "                                                                     y:::::y                                                                                       ",
        "                                                                     y:::::y                                                                                        ",
        "                                                                   y:::::y                                                                                         ",
        "                                                                   y:::::y                                                                                          ",
        "                                                                  yyyyyyy                                                                                           ",
      }
      return opts
    end,
  },
  -- You can disable default plugins as follows:
  -- { "max397574/better-escape.nvim", enabled = false },
  --
  -- You can also easily customize additional setup of plugins that is outside of the plugin's setup call
  -- {
  --   "L3MON4D3/LuaSnip",
  --   config = function(plugin, opts)
  --     require "plugins.configs.luasnip"(plugin, opts) -- include the default astronvim config that calls the setup call
  --     -- add more custom luasnip configuration such as filetype extend or custom snippets
  --     local luasnip = require "luasnip"
  --     luasnip.filetype_extend("javascript", { "javascriptreact" })
  --   end,
  -- },
  -- {
  --   "windwp/nvim-autopairs",
  --   config = function(plugin, opts)
  --     require "plugins.configs.nvim-autopairs"(plugin, opts) -- include the default astronvim config that calls the setup call
  --     -- add more custom autopairs configuration such as custom rules
  --     local npairs = require "nvim-autopairs"
  --     local Rule = require "nvim-autopairs.rule"
  --     local cond = require "nvim-autopairs.conds"
  --     npairs.add_rules(
  --       {
  --         Rule("$", "$", { "tex", "latex" })
  --           -- don't add a pair if the next character is %
  --           :with_pair(cond.not_after_regex "%%")
  --           -- don't add a pair if  the previous character is xxx
  --           :with_pair(
  --             cond.not_before_regex("xxx", 3)
  --           )
  --           -- don't move right when repeat character
  --           :with_move(cond.none())
  --           -- don't delete if the next character is xx
  --           :with_del(cond.not_after_regex "xx")
  --           -- disable adding a newline when you press <cr>
  --           :with_cr(cond.none()),
  --       },
  --       -- disable for .vim files, but it work for another filetypes
  --       Rule("a", "a", "-vim")
  --     )
  --   end,
  -- },
  -- By adding to the which-key config and using our helper function you can add more which-key registered bindings
  -- {
  --   "folke/which-key.nvim",
  --   config = function(plugin, opts)
  --     require "plugins.configs.which-key"(plugin, opts) -- include the default astronvim config that calls the setup call
  --     -- Add bindings which show up as group name
  --     local wk = require "which-key"
  --     wk.register({
  --       b = { name = "Buffer" },
  --     }, { mode = "n", prefix = "<leader>" })
  --   end,
  -- },
{
    "catppuccin/nvim", name = "catppuccin", priority = 1000, config = function() require("catppuccin").setup({
      flavour = "frappe", -- latte, frappe, macchiato, mocha
      background = { -- :h background
        light = "latte",
        dark = "mocha",
      }
    }) end, -- Fechamento da função config()
  },
}
