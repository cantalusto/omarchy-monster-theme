return {
  {
    "bjarneo/aether.nvim",
    branch = "v3",
    name = "aether",
    priority = 1000,
    opts = {
      colors = {
        bg         = "#15110f",
        dark_bg    = "#100d0b",
        darker_bg  = "#0a0807",
        lighter_bg = "#2a2320",

        fg         = "#cdc3b4",
        dark_fg    = "#9b9183",
        light_fg   = "#ddd3c4",
        bright_fg  = "#e8ddcc",
        muted      = "#4d4239",

        red        = "#9e1b1b",
        yellow     = "#b08a4f",
        orange     = "#a06a60",
        green      = "#6f7a52",
        cyan       = "#73888a",
        blue       = "#5b6e7a",
        purple     = "#7d4a44",
        brown      = "#5a4a40",

        bright_red    = "#c0392b",
        bright_yellow = "#c9a86a",
        bright_green  = "#869171",
        bright_cyan   = "#94a6a6",
        bright_blue   = "#7e909b",
        bright_purple = "#a06a60",

        accent               = "#c0392b",
        cursor               = "#c0392b",
        foreground           = "#cdc3b4",
        background           = "#15110f",
        selection            = "#2a2320",
        selection_foreground = "#e8ddcc",
        selection_background  = "#9e1b1b",
      },
    },
    -- set up hot reload
    config = function(_, opts)
      require("aether").setup(opts)
      vim.cmd.colorscheme("aether")
      require("aether.hotreload").setup()
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "aether",
    },
  },
}
