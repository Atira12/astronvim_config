-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>j"] = { "5j", desc = "Quick Down" },
    ["<leader>k"] = { "5k", desc = "Quick Up" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(function(bufnr)
          require("astronvim.utils.buffer").close(
            bufnr)
        end)
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    ["<leader>b"] = { name = "Buffers" },
    ["<leader><Tab>"] = {
      function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
      desc =
      "Next buffer"
    },

    ["<leader>z"] = { ":ZenMode<Enter>", desc = 'Zen Mode' },
    -- diabled mappings
    ["<leader>q"] = { ":lua require'jester'.run_file()<Enter>", desc = 'Run Jest file' },
    ["<leader>Q"] = { ":lua require'jester'.run()<Enter>", desc = 'Run nearest Jest test' },

    -- case mappings
    ["ga."] = { "<cmd>TextCaseOpenTelescope<CR>", desc = "To Pascal Case" },
    ["<leader>:"] = { function() require("vim.diagnostic").open_float(0, { scope = "line" }) end, desc = "Details Errors" },
    ["]b"] = false
  },
  v = {
    ["ga."] = { "<cmd>TextCaseOpenTelescope<CR>", desc = "To Pascal Case" },
  }
}
