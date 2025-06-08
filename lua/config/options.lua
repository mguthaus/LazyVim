-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
--
vim.g.mapleader = ","

-- Open ChatGPT main window
vim.api.nvim_set_keymap("n", "<leader>cc", ":ChatGPT<CR>", { noremap = true, silent = true })

-- Open ChatGPT act as
vim.api.nvim_set_keymap("n", "<leader>ca", ":ChatGPTActAs<CR>", { noremap = true, silent = true })

-- Apply a prompt
vim.api.nvim_set_keymap("v", "<leader>cp", ":'<,'>ChatGPTEditWithInstructions<CR>", { noremap = false, silent = true })

-- Correct grammar
vim.api.nvim_set_keymap("v", "<leader>cg", ":'<,'>ChatGPTRun grammar_correction<CR>", { noremap = true, silent = true })

-- Generate explanations for selected text
vim.api.nvim_set_keymap("v", "<leader>cx", ":'<,'>ChatGPTRun explain_code<CR>", { noremap = true, silent = true })

-- Optimize/refactor selected code
vim.api.nvim_set_keymap("v", "<leader>cr", ":'<,'>ChatGPTRun optimize_code<CR>", { noremap = true, silent = true })

-- Fix errors in selected code
vim.api.nvim_set_keymap("v", "<leader>cf", ":'<,'>ChatGPTRun fix_code<CR>", { noremap = true, silent = true })

-- Generate documentation for selected code
vim.api.nvim_set_keymap("v", "<leader>cd", ":'<,'>ChatGPTRun generate_docs<CR>", { noremap = true, silent = true })

-- Ask ChatGPT to debug selected code
vim.api.nvim_set_keymap("v", "<leader>cb", ":'<,'>ChatGPTRun debug_code<CR>", { noremap = true, silent = true })

-- Rewrite selected text with AI improvements
vim.api.nvim_set_keymap("v", "<leader>cw", ":'<,'>ChatGPTRun rewrite<CR>", { noremap = true, silent = true })
