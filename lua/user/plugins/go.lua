local Go = { "ray-x/go.nvim" }

Go.dependencies = {  -- optional packages
    "ray-x/guihua.lua",
    "neovim/nvim-lspconfig",
    "nvim-treesitter/nvim-treesitter",
}

Go.event = {"CmdlineEnter"}
Go.ft = {"go", 'gomod'}
Go.build = ':lua require("go.install").update_all_sync()' -- if you need to install/update all binaries

Go.config = function()
    require("go").setup()
end

return Go
