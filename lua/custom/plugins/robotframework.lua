--  robot framework lsp
--
return {
    require('lspconfig').robotframework_ls.setup{

        settings = {
            robot = {
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
