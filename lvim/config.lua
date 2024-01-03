--ad the docsb:b https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny

lvim.plugins = {
  {"navarasu/onedark.nvim",
    config = function()
      require("onedark").setup({
        style = "darker",
        toggle_style_list = "<Space>ab"
      })
      require("onedark").load()
    end
  },
  {
    "ojroques/nvim-lspfuzzy",
    dependencies = {
     "junegunn/fzf",
     "junegunn/fzf.vim"
    },
    config = function()
      require("lspfuzzy").setup({})
    end
  },
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    config = function()
      require("copilot").setup({})
    end,
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    },
      config = function()
      require("neo-tree").setup({
        enable_git_status = true,
        close_if_last_window = true,
        window = {
          width = 40,
        },
        buffers = {
          follow_current_file = {
            enabled = true
          },
        },
        filesystem = {
          follow_current_file = {
            enabled = true,
          },
          filtered_items = {
            hide_dotfiles = false,
            hide_gitignored = false,
            hide_by_name = {
              "node_modules",
              "bin",
              "obj"
            },
            never_show = {
              ".DS_Store",
              "thumbs.db"
            },
          },
        },
      }) 
    end
  },
  {
    'numToStr/Navigator.nvim',
    config = function()
        require('Navigator').setup()
    end
  },
  {
    'jghauser/mkdir.nvim'
  },
}
lvim.colorscheme = "onedark"
lvim.builtin.nvimtree.active = false -- NOTE: using neo-tree
lvim.builtin.terminal.active = false

vim.opt.guifont = "JetBrainsMono NF:h17"
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

lvim.keys.normal_mode["<C-h>"] = false
lvim.keys.normal_mode["<C-j>"] = false
lvim.keys.normal_mode["<C-k>"] = false
lvim.keys.normal_mode["<C-l>"] = false
lvim.keys.normal_mode["<C-d>"] = "<C-d>zz"
lvim.keys.normal_mode["n"] = "nzzzv"
lvim.keys.normal_mode["N"] = "Nzzzv"
lvim.keys.normal_mode["<c-s>"] = ":w<cr>"
lvim.keys.normal_mode["J"] = "mzJ`z"

lvim.keys.visual_mode["="] = ":m '>+1<CR>gv=gv"
lvim.keys.visual_mode["-"] = ":m '<-2<CR>gv=gv"

lvim.keys.normal_mode["<leader>\\"] = ":vsplit<CR>"
lvim.keys.visual_mode["<leader>p"] = [["_dP]] -- paste and keep
lvim.keys.normal_mode["<leader>y"] = [["+y]]
lvim.keys.visual_mode["<leader>y"] = [["+y]]
lvim.keys.normal_mode["<leader>Y"] = [["+Y]]
lvim.keys.normal_mode["<leader>d"] = [["_d]]
lvim.keys.insert_mode["<C-c>"] = "<Esc>"
lvim.keys.normal_mode["Q"] = "<nop>"

lvim.keys.normal_mode["."] = "<cmd>cnext<CR>zz"
lvim.keys.normal_mode[","] = "<cmd>cprev<CR>zz"
lvim.keys.normal_mode["<leader>k"] = "<cmd>lnext<CR>zz"
lvim.keys.normal_mode["<leader>j"] = "<cmd>lprev<CR>zz"

lvim.keys.visual_mode["<Tab>"] = ">gv"
lvim.keys.visual_mode["<S-Tab>"] = "<gv"

lvim.builtin.which_key.mappings["e"] = {}
lvim.keys.normal_mode["<leader>e"] = ":Neotree toggle=true<CR>"


vim.keymap.set({'n', 't'}, '<A-h>', '<CMD>NavigatorLeft<CR>')
vim.keymap.set({'n', 't'}, '<A-l>', '<CMD>NavigatorRight<CR>')
vim.keymap.set({'n', 't'}, '<A-k>', '<CMD>NavigatorUp<CR>')
vim.keymap.set({'n', 't'}, '<A-j>', '<CMD>NavigatorDown<CR>')
vim.keymap.set({'n', 't'}, '<A-p>', '<CMD>NavigatorPrevious<CR>')

