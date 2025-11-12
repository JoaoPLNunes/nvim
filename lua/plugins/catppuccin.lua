return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        flavour = "macchiato", -- latte, frappe, macchiato, mocha
        background = {
          light = "latte",
          dark = "mocha",
        },
        transparent_background = true,
        float = {
          transparent = false,
          solid = false,
        },
        show_end_of_buffer = false,
        term_colors = false,
        dim_inactive = {
          enabled = false,
          shade = "dark",
          percentage = 0.15,
        },
        no_italic = false,
        no_bold = false,
        no_underline = false,
        styles = {
          comments = { "italic" },
          conditionals = { "italic" },
          loops = {},
          functions = {},
          keywords = {},
          strings = {},
          variables = {},
          numbers = {},
          booleans = {},
          properties = {},
          types = {},
          operators = {},
        },
        custom_highlights = function(colors)
          return {
            Comment = { fg = colors.flamingo, style = { "italic" } },
          }
        end,
        lsp_styles = {
          virtual_text = {
            errors = { "italic" },
            hints = { "italic" },
            warnings = { "italic" },
            information = { "italic" },
            ok = { "italic" },
          },
          underlines = {
            errors = { "underline" },
            hints = { "underline" },
            warnings = { "underline" },
            information = { "underline" },
            ok = { "underline" },
          },
          inlay_hints = {
            background = true,
          },
        },
        color_overrides = {},
        default_integrations = true,
        auto_integrations = false,
        integrations = {
          cmp = true,
          gitsigns = true,
          nvimtree = true,
          notify = false,
          mini = {
            enabled = true,
            indentscope_color = "",
          },
        },
      })

      -- autocmd para sobrescrever highlights
      vim.api.nvim_create_autocmd("ColorScheme", {
        pattern = "catppuccin",
        callback = function()
          vim.api.nvim_set_hl(0, "MsgArea", { bg = "#8aadf4", fg = "#181926" })
          vim.api.nvim_set_hl(0, "ErrorMsg", { fg = "#ff5555", bg = "#181926", bold = true })
          vim.api.nvim_set_hl(0, "WarningMsg", { fg = "#ff8800", bg = "#181926", bold = true })
          vim.api.nvim_set_hl(0, "DiagnosticError", { fg = "#ff5555" })
          vim.api.nvim_set_hl(0, "MoreMsg", { bg = "#181926", fg = "#000000" })
        end,
      })

      vim.cmd.colorscheme("catppuccin")
    end,
  }
}

