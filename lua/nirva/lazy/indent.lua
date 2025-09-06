return {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    ---@module "ibl"
    ---@type ibl.config
    dependencies = {
        "nvim-treesitter/nvim-treesitter",
    },
    opts = {
        scope = {
            enabled = true,
            show_start = false,
            exclude = {},
        },
    },
}
