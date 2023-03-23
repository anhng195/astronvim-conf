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
    "CRAG666/code_runner.nvim",
    config = function()
      require('code_runner').setup {

        filetype = {
          java = "cd $dir && javac $fileName && java $fileNameWithoutExt",
          python = "python3 -u",
          typescript = "deno run",
          javascript = "node $fileName",
          rust = "cd $dir && rustc $fileName && $dir/$fileNameWithoutExt",
          -- cpp="gcc $fileName -lstdc++ -o $fileNameWithoutExt && $fileNameWithoutExt"
          cpp =
          "cd $dir && rm -f $fileNameWithoutExt && g++ $fileName -std=c++17 -O2 -Wall -o $fileNameWithoutExt && echo -e \"\\e[1;32mOutput:\\e[1;0m\" && ./$fileNameWithoutExt",
          scss = "sass $dir/$fileName $dir/$fileNameWithoutExt.css",
        },
      }
    end,
    ft = { 'cpp', 'python', 'java', 'javascript', 'rust', 'scss' },
    -- lazy = true,
  },
  {
    "navarasu/onedark.nvim",
    config = function()
      require('onedark').load()
    end,
  },
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
