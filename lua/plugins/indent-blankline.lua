return {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    event = "BufReadPost",
    opts = {
        exclude = {
            filetypes = {
                'lspinfo',
                'packer',
                'checkhealth',
                'help',
                'man',
                'dashboard',
                'NvimTree',
            },
        },
    }
}
