--  robot framework lsp
--
return {
    require('lspconfig').robotframework_ls.setup{
        
        -- cmd = { "robotframework_ls", "-vv", "--log-file=/tmp/logfile.log" },
        settings = {
            robot = {
                pythonpath = {
                        "/Users/anttisaaristo/tmp/robot/ide-test/library"
                    },
                -- Enable linting
                lint = {
                    robocop = {
                        enabled = true
                    }
                }
            }
        },

    }
    
}
