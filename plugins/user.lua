return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  { "ellisonleao/glow.nvim", config = true, cmd = "Glow" },
  {
    "iamcco/markdown-preview.nvim",
    ft = "markdown",
    build = function()
      vim.fn["mkdp#util#install"]()
    end,
  },
  {
    'nvim-neorg/neorg',
    ft = 'norg',   -- lazy load on filetype
    cmd = 'Neorg', -- lazy load on command, allows you to autocomplete :Neorg regardless of whether it's loaded yet
    --  (you could also just remove both lazy loading things)
    priority = 30, -- treesitter is on default priority of 50, neorg should load after it.
    config = function()
      require('neorg').setup {
        load = {
          ["core.defaults"] = {},       -- Loads default behaviour
          ["core.norg.concealer"] = {}, -- Adds pretty icons to your documents
          ["core.norg.completion"] = {},
          ["core.norg.dirman"] = {      -- Manages Neorg workspaces
            config = {
              workspaces = {
                notes = "~/notes",
              },
            },
          },
        },
      }
    end
  },
}
