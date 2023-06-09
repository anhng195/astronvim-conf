-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    
    -- term
    ["<leader>tt"] = { "<cmd>ToggleTerm size=10 direction=horizontal dir=%:p:h<cr>", desc = "ToggleTerm current file's directory" },

    -- debugging
    ["<leader>dg"] = { "<cmd>term gdb -tui %:r<cr>", desc = "Debug with gdb" },

    -- run code
    ["<leader>rr"] = { "<cmd>w<bar>RunCode<cr>", desc = "Run code" },
    ["<leader>rf"] = { "<cmd>RunFile<cr>", desc = "Run file" },
    ["<leader>rp"] = { "<cmd>RunProject<cr>", desc = "Run project" },
    ["<leader>rc"] = { "<cmd>RunClose<cr>", desc = "Close runner" },
    -- ["<leader>rd"] = { "<cmd>!c++ -g -std=c++17 <cr>", desc = "Debug current file" },
    ["<leader>r"] = { name = " Run code" },
    --
    ["<leader>bb"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bc"] = { "<cmd>BufferLinePickClose<cr>", desc = "Pick to close" },
    ["<leader>bj"] = { "<cmd>BufferLinePick<cr>", desc = "Pick to jump" },
    ["<leader>bt"] = { "<cmd>BufferLineSortByTabs<cr>", desc = "Sort by tabs" },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    -- ["<leader>b"] = { name = "Buffers" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
