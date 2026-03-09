return {
  {
    "folke/tokyonight.nvim",
    lazy = false, -- Changed to false to prevent starup flickering.  Active UI is a happy UI
    priority = 1000, -- Now loads before other plugins,
    opts = { style = "moon" },
  },
}
