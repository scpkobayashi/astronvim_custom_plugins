return {
  plugins = {
    {
      'gelguy/wilder.nvim',
        lazy = false,
        config = function()
        
          local wilder = require('wilder')
          wilder.setup({modes = {':', '/', '?'}})

          wilder.set_option('pipeline', {
            wilder.branch(
              wilder.cmdline_pipeline(),
              wilder.search_pipeline()
            ),
          })

          wilder.set_option('renderer', wilder.wildmenu_renderer({
            highlighter = wilder.basic_highlighter(),
          }))

        end,
    },
    {
      "github/copilot.vim",
        lazy = false
    },
    {
      "jackMort/ChatGPT.nvim",
        event = "VeryLazy",
        config = function()
          require("chatgpt").setup({
            api_key_cmd = "pass show tokens/openai/chatgpt_nvim"
        })
        end,
        dependencies = {
          "MunifTanjim/nui.nvim",
          "nvim-lua/plenary.nvim",
          "folke/trouble.nvim",
          "nvim-telescope/telescope.nvim"
        },
      },
    },
  }
