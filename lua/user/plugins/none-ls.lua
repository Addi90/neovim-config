-------------------------------------------------------------------------------
-- LAZY - PLUGIN SPEC
-------------------------------------------------------------------------------

local NoneLs = { "nvimtools/none-ls.nvim" }

NoneLs.opts = function()
    local null_ls = require("null-ls")

    return {
        sources = {
            null_ls.builtins.diagnostics.markdownlint,
            null_ls.builtins.formatting.markdownlint,
        }
    }
end

NoneLs.config = function(_, opts)
    require("null-ls").setup(opts)
end

return NoneLs
