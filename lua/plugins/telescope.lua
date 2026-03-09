return {
  "nvim-telescope/telescope.nvim",
  keys = {
    -- Disable default file tree vibez
    { "<leader>pf", "<cmd>Telescope find_files<cr>", desc = "Find Files (Root)" },
    { "<C-p>", "<cmd>Telescope git_files<cr>", desc = "Get Files" },
    {
      "<leader>ps",
      function()
        require("telescope.builtin").grep_string({ search = vim.fn.input("Grep > ") })
      end,
      desc = "Project Search",
    },
  },
}
