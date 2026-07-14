return {
  "sindrets/diffview.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  cmd = { "DiffviewOpen", "DiffviewClose", "DiffviewFileHistory" },
  keys = {
    { "<leader>gd", "<cmd>DiffviewOpen<cr>", desc = "Diff View Open" },
    { "<leader>gh", "<cmd>DiffviewFileHistory %<cr>", desc = "File History" },
    { "<leader>gD", "<cmd>DiffviewClose<cr>", desc = "Diff View Close" },
  },
  config = function()
    require("diffview").setup({
      keymaps = {
        merge_tool = {
          { "n", "<leader>zo", "<cmd>diffget //2<cr>", { desc = "Merge: choose ours" } },
          { "n", "<leader>zt", "<cmd>diffget //3<cr>", { desc = "Merge: choose theirs" } },
          { "n", "<leader>zb", "<cmd>diffget //1<cr>", { desc = "Merge: choose base" } },
        },
      },
    })
  end,
}
