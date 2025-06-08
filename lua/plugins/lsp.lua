return {
  "neovim/nvim-lspconfig",
  enabled = true,
  opts = {
    servers = {
      texlab = {
        settings = {
          texlab = {
            experimental = {
              -- This is the key setting to disable reference previews
              diagnostics = {
                ignoredPatterns = {}, -- optional, if you're also suppressing some diagnostics
              },
              -- If you're seeing the caption next to `\ref`, it's from build or forwardSearch context;
              -- the inlay hint behavior isn't directly configurable, but this disables extra processing
              ref = {
                enabled = false, -- try this if supported in your texlab version
              },
            },
          },
        },
      },
    },
  },
}
