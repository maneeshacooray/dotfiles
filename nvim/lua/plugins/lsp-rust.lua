return {
  -- Ensure rust-analyzer is installed
  {
    "williamboman/mason-lspconfig.nvim",
    opts = {
      ensure_installed = { "rust_analyzer" },
    },
  },

  -- Setup rust-tools.nvim for enhanced Rust support
  {
    "simrat39/rust-tools.nvim",
    ft = { "rust" },
    dependencies = { "neovim/nvim-lspconfig" },
    config = function()
      local rt = require("rust-tools")
      rt.setup({
        server = {
          on_attach = function(_, bufnr)
            -- Hover actions
            vim.keymap.set("n", "<leader>rh", rt.hover_actions.hover_actions, { buffer = bufnr, desc = "Rust Hover" })
            -- Code action groups
            vim.keymap.set(
              "n",
              "<leader>ra",
              rt.code_action_group.code_action_group,
              { buffer = bufnr, desc = "Rust Code Action Group" }
            )
          end,
        },
      })
    end,
  },
}
