return {
  "nvim-tree/nvim-tree.lua",
  dependencies = {
    "nvim-tree/nvim-web-devicons"
  },
  config = function()
    local nvimtree = require("nvim-tree")

    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    nvimtree.setup {
      update_focused_file = {
        enable = true,
        update_root = true,
      },

      modified = {
        enable = true,
      },

      view = {
        side           = 'right',
        number         = true,
        relativenumber = true,
        width          = 45
      },
      renderer = {
        full_name              = true,
        highlight_opened_files = 'name',
        highlight_modified     = 'name',

        indent_markers = {
          enable = true,

          icons = {
            corner = "└",
            edge   = "│",
            item   = "│",
            bottom = "─",
            none   = " ",
          },
        },

        icons = {
          glyphs = {
            default = '󰈔',

            folder = {
              arrow_closed = "",
              arrow_open = "",
              default = "",
              open = "",
              empty = "",
              empty_open = "",
              symlink = "",
              symlink_open = "",
            },

            git = {
              unstaged = "󰰨",
              staged = "󰰢",
              unmerged = "",
              renamed = "󰰟",
              untracked = "󰎔",
              deleted = "󰚃",
              ignored = "◌",
            },
          },
        }
      }
    }

    -- set keymaps
    local function map(mode, shortcut, command)
      vim.api.nvim_set_keymap(mode, shortcut, command, { noremap = true, silent = true })
    end

    map("", "<leader>q", "<cmd>NvimTreeToggle<CR>") -- Toggle filesystem (nvim-tree plugin)
  end
}
