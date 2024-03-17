require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })

map("n", "<leader>fm", function()
  require("conform").format()
end, { desc = "File Format with conform" })

-- go down by ten line with ctrl + j
map("n", "<C-j>", "10j", { desc = "Go down by 10 lines" })

-- go up by ten line with ctrl + k
map("n", "<C-k>", "10k", { desc = "Go up by 10 lines" })
map("i", "jk", "<ESC>", { desc = "Escape insert mode" })
