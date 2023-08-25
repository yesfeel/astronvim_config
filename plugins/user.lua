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
}
