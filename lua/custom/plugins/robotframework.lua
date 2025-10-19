-- Robot Framework LSP Configuration
-- pip install robotframework-lsp

return {
  vim.lsp.config('robotframework_ls', {
    -- You can optionally specify a custom command:
    -- cmd = { "robotframework_ls", "-vv", "--log-file=/tmp/logfile.log" },

    settings = {
      robot = {
        pythonpath = {
          '/Users/anttisaaristo/tmp/robot/ide-test/library',
        },
        lint = {
          robocop = {
            enabled = true,
          },
        },
      },
    },
  }),
}
