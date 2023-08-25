return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  --
  {
    "loctvl842/monokai-pro.nvim",
    config = function()
      require("monokai-pro").setup {
        filter = "machine", -- classic | octagon | pro | machine | ristretto | spectrum
      }
    end,
  },
  {
    "cpea2506/one_monokai.nvim",
    name = "one_monokai",
    config = function()
      require("one_monokai").setup {
        transparent = true, -- enable transparent window
        colors = {
          lmao = "#111111", -- add new color
          pink = "#ec6075", -- replace default color
        },
        themes = function(colors)
          -- change highlight of some groups,
          -- the key and value will be passed respectively to "nvim_set_hl"
          return {
            Normal = { bg = colors.lmao },
            DiffChange = { fg = colors.white:darken(0.3) },
            ErrorMsg = { fg = colors.pink, standout = true },
            ["@lsp.type.keyword"] = { link = "@keyword" },
          }
        end,
        -- italics = false, -- disable italics
      }
    end,
  },
  {
    "renerocksai/telekasten.nvim",
    dependencies = { "nvim-telescope/telescope.nvim", "mattn/calendar-vim" },
    lazy = false,
    config = function()
      require("telekasten").setup {
        home = vim.fn.expand "~/JPzNote",
      }
    end,
  },
  -- {
  --   "nanozuki/tabby.nvim",
  --   lazy = false,
  --   config = function()
  --     local theme = {
  --       fill = "TabLineFill",
  --       -- Also you can do this: fill = { fg='#f2e9de', bg='#907aa9', style='italic' }
  --       head = "TabLine",
  --       current_tab = "TabLineSel",
  --       tab = "TabLine",
  --       win = "TabLine",
  --       tail = "TabLine",
  --     }
  --     require("tabby.tabline").set(function(line)
  --       return {
  --         {
  --           { "  ", hl = theme.head },
  --           line.sep("", theme.head, theme.fill),
  --         },
  --         line.tabs().foreach(function(tab)
  --           local hl = tab.is_current() and theme.current_tab or theme.tab
  --           return {
  --             line.sep("", hl, theme.fill),
  --             tab.is_current() and "" or "󰆣",
  --             tab.number(),
  --             tab.name(),
  --             tab.close_btn "",
  --             line.sep("", hl, theme.fill),
  --             hl = hl,
  --             margin = " ",
  --           }
  --         end),
  --         line.spacer(),
  --         line.wins_in_tab(line.api.get_current_tab()).foreach(
  --           function(win)
  --             return {
  --               line.sep("", theme.win, theme.fill),
  --               win.is_current() and "" or "",
  --               win.buf_name(),
  --               line.sep("", theme.win, theme.fill),
  --               hl = theme.win,
  --               margin = " ",
  --             }
  --           end
  --         ),
  --         {
  --           line.sep("", theme.tail, theme.fill),
  --           { "  ", hl = theme.tail },
  --         },
  --         hl = theme.fill,
  --       }
  --     end)
  --   end,
  -- },
}
