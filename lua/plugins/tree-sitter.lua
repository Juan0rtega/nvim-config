return {
  "nvim-treesitter/nvim-treesitter",
  dependencies = {
    "nvim-treesitter/nvim-treesitter-textobjects",
  },
  build = ":TSUpdate",
  event = "VeryLazy",
  main = "nvim-treesitter.configs",
  opts = {
    ensure_installed = {
      "lua",
      "luadoc",
      "apex",
      "python",
      "javascript",
      "go",
      "xml",
      "html",
      "css",
      "csv",
    },
    highlight = {
      enable = true,
    },
    indent = {
      enable = true,
    },
    textobjects = {
      select = {
        enable = true,
        lookahead = true,
        keymaps = {
          ["af"] = "@function.outer",
          ["if"] = "@function.inner",
          ["ac"] = "@conditional.outer",
          ["ic"] = "@conditional.inner",
          ["al"] = "@loop.outer",
          ["il"] = "@loop.inner",

        },
    },
    move = {
        enable = true,
        set_jumps = true,
        goto_next_start = {
          ["<A-j>"] = "@function.outer",
          ["<leader>nl"] = "@loop.outer",
          ["<A-n>"] = "@parameter.outer",
          ["<leader>nc"] = "@conditional.outer",
        },
        goto_next_end = {
          ["<A-J>"] = "@function.outer",
          ["<A-N>"] = "@parameter.outer",
          ["<leader>nL"] = "@loop.outer",
        },
        goto_previous_start = {
          ["<A-k>"] = "@function.outer",
          ["<A-p>"] = "@parameter.outer",
          ["<leader>pl"] = "@loop.outer",
        },
        goto_previous_end = {
          ["<A-K>"] = "@function.outer",
          ["<A-P>"] = "@parameter.outer",
          ["<leader>pL"] = "@loop.outer",
        },



      },
    },
  }
}
