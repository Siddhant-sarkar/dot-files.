return {
  -- Add a compile-and-run shortcut for CP
  {
    "nvim-neo-tree/neo-tree.nvim",
    optional = true,
  },
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    opts = {
      size = 15,
      direction = "horizontal",
      shell = vim.o.shell,
    },
    keys = {
      -- <leader>r = compile & run current file
      {
        "<leader>r",
        function()
          local file = vim.fn.expand("%:p")
          local out = vim.fn.expand("%:p:r")
          local cmd = string.format(
            "g++ -std=c++20 -Wall -Wextra -Wno-unused-variable -Wno-unused-const-variable -Wno-unused-parameter -o %s %s && %s",
            out,
            file,
            out
          )
          require("toggleterm.terminal").Terminal
            :new({
              cmd = cmd,
              close_on_exit = false,
              direction = "horizontal",
            })
            :toggle()
        end,
        desc = "Compile & Run C++",
      },
      -- <leader>ri = compile & run with input file
      {
        "<leader>ri",
        function()
          local file = vim.fn.expand("%:p")
          local out = vim.fn.expand("%:p:r")
          local dir = vim.fn.expand("%:p:h")
          local cmd = string.format(
            "g++ -std=c++20 -Wall -Wextra -Wno-unused-variable -Wno-unused-const-variable -Wno-unused-parameter -o %s %s && %s < %s/input.txt",
            out,
            file,
            out,
            dir
          )
          require("toggleterm.terminal").Terminal
            :new({
              cmd = cmd,
              close_on_exit = false,
              direction = "horizontal",
            })
            :toggle()
        end,
        desc = "Compile & Run with input.txt",
      },
    },
  },
}
