-- ~/.config.nvim/lua/config/keymaps.lua
local map = vim.keymap.set

-- 1. Movement
-- Move entire highlighted blocks of code up/down with J and K maps
map("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move block down" })
map("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move block up" })

-- Keep cursor centered during half-age jumps and search for eye strain

map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")
map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")

-- 2. Possibly the greatest rempa ever to exist let me explian
-- Past over highlighted text W/O drumm roll lossing the buffer . \ / .
map("x", "<leader>p", [["_dP"]])

-- Search and replace the word you are curently on ("refactoring made easy")
map(
  "n",
  "<leader>s",
  [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
  { desc = "Search/Replace word under cursor" }
)

-- 3.  Go-Centric Testing using NeoTest
-- Runs test nearest to cursor instantly
map("n", "<leader>gt", function()
  require("neotest").run.run()
end, { desc = "Run nearest Go Test" })

-- 4. Terminal Management
-- <C-t> for ToggleTerm (updated API)
map("n", "<C-t>", "<cmd> ToggleTerm<CR>", { desc = "Toggle Terminal" })

-- 5.  File System aka ANTI-TREE map
-- use <leader>pb to jump into built in netrw for when we require a folder view
map("n", "<leader>pv", vim.cmd.Ex, { desc = "Project View (Netrw)" })
