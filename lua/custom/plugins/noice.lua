return {
  'folke/noice.nvim',
  event = 'VeryLazy', -- Load it early enough to capture UI events
  dependencies = {
    -- Recommended dependencies, check Noice docs for latest
    'MunifTanjim/nui.nvim',
    'rcarriga/nvim-notify', -- Optional, for nicer notifications
  },
  opts = {
    -- Configuration options for Noice
    cmdline = {
      enabled = true, -- Ensure the cmdline replacement is enabled (usually true by default)
      view = 'cmdline_popup', -- Use a floating window for the command line
      opts = { position = { row = '50%', col = '50%' }, size = { width = '80%', height = 'auto' } }, -- Customize popup position/size
      -- You can also try 'cmdline' or 'cmdline_popup_history'
      -- icons = { cmdline = "" } -- Optional: configure icons if you have a Nerd Font
    },
    messages = {
      enabled = true, -- Also replace messages with floating windows/virtual text (recommended)
    },
    popupmenu = {
      enabled = true, -- Make popup menu integrate nicely
    },
    -- routes = { -- Example: fine-tune routing if needed
    -- {
    --   filter = { event = "msg_show", kind = "" },
    --   view = "notify",
    -- },
    -- }
    lsp = {
      -- override markdown rendering to show documentation in borders
      override = {
        ['vim.lsp.util.convert_input_to_markdown_lines'] = true,
        ['vim.lsp.util.stylize_markdown'] = true,
        ['cmp.entry.get_documentation'] = true, -- if using nvim-cmp
      },
    },
    -- you can enable a preset configuration for easier setup
    presets = {
      bottom_search = false, -- use a classic bottom cmdline for search
      command_palette = true, -- position cmdline centrally like vscode
      long_message_to_split = true, -- long messages will be sent to a split
      inc_rename = false, -- don't use incremental rename (can be confusing)
      lsp_doc_border = false, -- add borders to lsp documentation
    },
    -- Add any other specific configurations you want here
    -- Check the noice.nvim documentation for all options:
    -- https://github.com/folke/noice.nvim
  },
}
