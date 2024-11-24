return {
  'nvim-neotest/neotest',
  dependencies = {
    'nvim-neotest/nvim-nio',
    'thenbe/neotest-playwright',
    dependencies = 'nvim-telescope/telescope.nvim',
  },
  config = function()
    require('neotest').setup {
      consumers = {
        playwright = require('neotest-playwright.consumers').consumers,
      },
      icons = {
        passed = '✔️',
        failed = '❌',
        running = '⏳',
      },
      output = {
        enabled = true, -- Enable output for test results
        open_on_run = 'short', -- Automatically open output on test run
      },
      adapters = {
        require('neotest-playwright').adapter {
          options = {
            persist_project_selection = true,
            enable_dynamic_test_discovery = true,
          },
        },
      },
    }
  end,
}
