return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.color.transparent-nvim" },
  { import = "astrocommunity.colorscheme.tokyonight-nvim", enabled = true },
  { import = "astrocommunity.colorscheme.dracula-nvim", enabled = false },
  { import = "astrocommunity.pack.rust" },
  {
    "rust-tools.nvim",
    opts = {
      tools = {
        -- rust-tools options
        reload_workspace_from_cargo_toml = true,
        inlay_hints = {
          auto = true,
          only_current_line = false,
          show_parameter_hints = true,
          highlight = "Comment",
        },
      },
      server = {
        -- standalone file support
        -- setting it to false may improve startup time
        standalone = true,
        settings = {
          ["rust-analyzer"] = {
            cargo = {
              features = "all",
            },
            lens = {
              enable = false,
            },
            check = {
              command = "clippy",
            },
          },
        },
      }, -- rust-analyzer options
    }
  }
  -- example of importing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  -- { import = "astrocommunity.colorscheme.catppuccin" },
  -- { import = "astrocommunity.completion.copilot-lua-cmp" },
}
