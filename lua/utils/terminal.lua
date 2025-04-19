local M = {}

function M.float_term(cmd)
  local Terminal = require('toggleterm.terminal').Terminal

  local term = Terminal:new {
    cmd = cmd or nil, -- Optional command to run, e.g. "lazygit"
    direction = 'float',
    hidden = true,
    close_on_exit = true,
    float_opts = {
      border = 'rounded',
      winblend = 10,
    },
    on_open = function(term)
      -- Map 'q' in terminal mode to close the floating window
      vim.api.nvim_buf_set_keymap(term.bufnr, 't', 'q', '<cmd>close<CR>', {
        noremap = true,
        silent = true,
      })

      -- Optional: map <Esc> to return to normal mode from terminal
      vim.api.nvim_buf_set_keymap(term.bufnr, 't', '<Esc>', [[<C-\><C-n>]], {
        noremap = true,
        silent = true,
      })
    end,
  }

  term:toggle()
end

return M
