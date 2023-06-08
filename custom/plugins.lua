local plugins = {

  { "elkowar/yuck.vim" , lazy = false },  -- load a plugin at startup

  -- You can use any plugin specification from lazy.nvim
  {
    "Pocco81/TrueZen.nvim",
    cmd = { "TZAtaraxis", "TZMinimalist" },
    config = function()
      require "custom.configs.truezen" -- just an example path
    end,
  },

  -- this opts will extend the default opts 
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "html",
        "css",
        "bash",
        "vim",
        "lua",
        "javascript",
        "typescript",
        "tsx",
        "json",
        "svelte",
        "c",
        "cmake",
        "c_sharp",
        "rust"
      },
    },
  },

  -- if you load some function or module within your opt, wrap it with a function
  {
   "nvim-telescope/telescope.nvim",
   opts = {
     defaults = {
       mappings = {
         i = {
           ["<esc>"] = function(...)
               require("telescope.actions").close(...)
            end,
          },
        },
      },
    },
   },

   {
     "folke/which-key.nvim",
     enabled = false,
   },

   -- In order to modify the `lspconfig` configuration:
{
  "neovim/nvim-lspconfig",
       dependencies = {
         "jose-elias-alvarez/null-ls.nvim",
         config = function()
       require "custom.configs.null-ls"
     end,
   },
   config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
   end,
},


}

return plugins

