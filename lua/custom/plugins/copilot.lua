-- File: lua/custom/plugins/copilot.lua

return {
  'github/copilot.vim',
  config = function()
    -- Basic configuration for GitHub Copilot
    -- Disable the default <Tab> keybinding to avoid conflicts with other plugins
    --    vim.g.copilot_no_tab_map = true

    -- Set a custom keybinding to accept Copilot suggestions (Ctrl + J in insert mode)
    vim.api.nvim_set_keymap('i', '<C-J>', 'copilot#Accept("<CR>")', { silent = true, expr = true })

    -- Optionally, restrict Copilot to specific file types
    -- Uncomment and modify as needed:
    -- vim.g.copilot_filetypes = {
    --   ["*"] = false,          -- Disable for all file types by default
    --   ["javascript"] = true,  -- Enable for JavaScript files
    --   ["lua"] = true,         -- Enable for Lua files
    -- }

    -- Additional configurations can be added below based on your needs
    vim.g.copilot_assume_mapped = true -- Assume key mappings are handled by the user
  end,
}
