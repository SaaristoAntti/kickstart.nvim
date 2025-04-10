-- File: lua/custom/plugins/filetree.lua

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  config = function()
    require('neo-tree').setup {
      window = {
        mappings = {
          -- Add your mapping here:
          ['<C-b>'] = 'toggle', -- Use the "toggle" command provided by Neo-tree
          -- Or, you might prefer it to only close when focused:
          -- ["<C-b>"] = "close_window",

          -- It's also good practice to ensure 'q' closes it if you like that:
          -- ["q"] = "close_window",

          -- Add any other mappings you want active *only* inside Neo-tree
        },
      },
    }
  end,
}
