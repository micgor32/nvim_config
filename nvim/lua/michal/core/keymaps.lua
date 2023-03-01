vim.g.mapleader = " "

local keymap = vim.keymap

-- keymaps

keymap.set("n", "<leader>nn", ":nohl<CR>")

-- inc/dec
keymap.set("n", "<leader>+", "<C-a>")
keymap.set("n", "<leader>-", "<C-x>")

-- moving
keymap.set("n", "<leader>h", "<C-w>h")
keymap.set("n", "<leader>l", "<C-w>l")
keymap.set("n", "<leader>j", "<C-w>j")
keymap.set("n", "<leader>k", "<C-w>k")

-- windows
keymap.set("n", "<leader>v", "<C-w>v")
keymap.set("n", "<leader>nh", "<C-w>s")
keymap.set("n", "<leader>e", "<C-w>=")
keymap.set("n", "<leader>x", ":close<CR>")

-- tabs
-- keymap.set("n", "<leader>to", ":tabnew<CR>")
-- keymap.set("n", "<leader>tx", ":tabclose<CR>")
-- keymap.set("n", "<leader>tn", ":tabn<CR>")
-- keymap.set("n", "<leader>tp", ":tabp<CR>")

-- nvimtree
keymap.set("n", "<leader>f", ":NvimTreeToggle<CR>")

-- java tests
keymap.set("n", "<leader>d", function()
	require("dap").repl.toggle()
end)
keymap.set("n", "<leader>tm", function()
	require("jdtls").test_nearest_method()
end)
keymap.set("n", "<leader>tc", function()
	require("jdtls").test_class()
end)

-- maven tests
--keymap.set("n", "<leader>tc", ":Mvn test<CR>")

-- git automatisation
keymap.set("n", "<leader>ga", ":Git add *<CR>")
keymap.set("n", "<leader>gc", ":Git commit<CR>")
keymap.set("n", "<leader>gp", ":Git push<CR>")
keymap.set("n", "<leader>pp", ":Git pull<CR>")
