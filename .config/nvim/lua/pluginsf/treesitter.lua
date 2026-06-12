return {
    

    "nvim-treesitter/nvim-treesitter",
    build = function()
        -- Clean installation directory first
        local ts_install = require("nvim-treesitter.install")
        ts_install.commands.TSClean.command()
        ts_install.commands.TSUpdate.command()
    end,
    config = function()
        require("nvim-treesitter.configs").setup({
            ensure_installed = { "lua", "vim", "vimdoc", "query", "javascript", "typescript", "python", "java", "c" },
            sync_install = false,
            auto_install = true,
            highlight = { enable = true },
            indent = { enable = true },
        })
    end
}

