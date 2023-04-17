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
    {
      "L3MON4D3/LuaSnip",
      config = function(plugin, opts)
        require "plugins.configs.luasnip"(plugin, opts) -- include the default astronvim config that calls the setup call
        require("luasnip.loaders.from_vscode").lazy_load { paths = { "./lua/user/snippets" } } -- load snippets paths
      end,
    },
  { "ellisonleao/glow.nvim", config = true, cmd = "Glow" },
  {
    "ray-x/lsp_signature.nvim",
    -- event = "InsertEnter",
    -- after = 'nvim-cmp',
    lazy = false,
    config = function()
      -- require('lsp_signature').load()
      require "lsp_signature".on_attach()
    end,
  },
  {
    "CRAG666/code_runner.nvim",
    config = function()
      require('code_runner').setup {
        -- mode = "toggleterm",
        filetype = {    
          java = {
            "cd $dir &&",
            "javac $fileName &&",
            "java $fileNameWithoutExt"
          },
          python = "python3 -u",
          typescript = "deno run",
          rust = {
            "cd $dir &&",
            "rustc $fileName &&",
            "$dir$fileNameWithoutExt"
          },
          javascript = "node $fileName",
          -- cpp="gcc $fileName -lstdc++ -o $fileNameWithoutExt && $fileNameWithoutExt"
          cpp = {
            "cd $dir &&",
            "rm -f $fileNameWithoutExt &&",
            "g++ -g $fileName -std=c++17 -o $fileNameWithoutExt &&",
            "echo -e \"\\e[1;32mOutput:\\e[1;0m\" &&",
            "./$fileNameWithoutExt"
          },
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
}
