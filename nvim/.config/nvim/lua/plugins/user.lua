-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- You can also add or configure plugins by creating files in this `plugins/` folder
-- Here are some examples:

---@type LazySpec
return {
  -- == mappings == 
  n = {
  },

  -- == add plugins ==

  {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    config = true
  },


  {
    "ray-x/lsp_signature.nvim",
    event = "BufRead",
    config = function() require("lsp_signature").setup() end,
  },

  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {},
    event = "User AstroFile",
    keys = {
      { "<leader>T", "<cmd>TodoTelescope<cr>" },
    },
  },

  -- == customize plugins ==
  {
    "goolord/alpha-nvim",
    opts = function(_, opts)
      -- customize the dashboard header
      opts.section.header.val = {
      "                                              ___   ",
      "                                           ,o88888  ",
      "                                        ,o8888888'  ",
      "                  ,:o:o:oooo.        ,8O88Pd8888\"  ",
      "              ,.::.::o:ooooOoOoO. ,oO8O8Pd888'\"    ",
      "            ,.:.::o:ooOoOoOO8O8OOo.8OOPd8O8O\"      ",
      "           , ..:.::o:ooOoOOOO8OOOOo.FdO8O8\"        ",
      "          , ..:.::o:ooOoOO8O888O8O,COCOO\"          ",
      "         , . ..:.::o:ooOoOOOO8OOOOCOCO\"            ",
      "          . ..:.::o:ooOoOoOO8O8OCCCC\"o             ",
      "             . ..:.::o:ooooOoCoCCC\"o:o             ",
      "             . ..:.::o:o:,cooooCo\"oo:o:            ",
      "          `   . . ..:.:cocoooo\"'o:o:::'            ",
      "          .`   . ..::ccccoc\"'o:o:o:::'             ",
      "         :.:.    ,c:cccc\"':.:.:.:.:.'              ",
      "       ..:.:\"'`::::c:\"'..:.:.:.:.:.'               ",
      "     ...:.'.:.::::\"'    . . . . .'                 ",
      "    .. . ....:.\"' `   .  . . ''                    ",
      "  . . . ....\"'                                     ",
      "  .. . .\"'                                         ",
      " .                                                  ",
      }
      return opts
    end,
  },

  -- == disable plugins ==
  -- { "max397574/better-escape.nvim", enabled = false },
}
