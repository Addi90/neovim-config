-------------------------------------------------------------------------------
-- LAZY - PLUGIN SPEC
-------------------------------------------------------------------------------

local WhichKey = { "folke/which-key.nvim" }

WhichKey.event = 'VeryLazy'

WhichKey.init = function()
    vim.keymap.set(
        "n",
        "<leader>wK",
        function() vim.cmd("WhichKey") end,
        { desc = "Which-key all keymaps" }
    )

    vim.keymap.set(
        "n",
        "<leader>wk",
        function()
            local input = vim.fn.input("WhichKey: ")
            vim.cmd("WhichKey " .. input)
        end,
        { desc = "Which-key query lookup" }
    )
end

WhichKey.config = function(_, opts)
    require("which-key").setup(opts)

    -- Document existing key chains
    require('which-key').register {
        ['<leader>B'] = { name = '[B]uffer', _ = 'which_key_ignore' },
        ['<leader>f'] = { name = '[F]ind', _ = 'which_key_ignore' },
        ['<leader>c'] = { name = '[C]opilot', _ = 'which_key_ignore' },
        ['<leader>w'] = { name = '[W]hich-Key', _ = 'which_key_ignore'},
        ['<leader>h'] = { name = '[H]arpoon', _ = 'which_key_ignore'},
        ['<leader>d'] = { name = '[D]AP', _ = 'which_key_ignore'},
        ['<leader>t'] = { name = '[T]erminal', _ = 'which_key_ignore'},
        ['<leader>E'] = { name = '[E]ditor options', _ = 'which_key_ignore'}
    }
end

return WhichKey
