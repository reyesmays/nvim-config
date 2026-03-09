return {
  -- Git Integration
  {
    "tpope/vim-fugitive",
    keys = {
      { "<leader>gs", "<cmd>Git<CR>", desc = "Git Status" },
      { "<leader>gc", "<cmd>Git commit<CR>", desc = "Git Commit" },
    },
  },
  -- Terminal
  { "akinsho/toggleterm.nvim", version = "*", opts = { open_mapping = [[<c-\>]] } },
}
