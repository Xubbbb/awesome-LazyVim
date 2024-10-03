return {
    {
        "williamboman/mason.nvim",
        opts = {
        ensure_installed = {
            "clang-format",
        },
        },
    },
    -- set c/cpp/cuda 's indent width as 4 and use 'clang-format' to format 
    {
        "stevearc/conform.nvim",
        opts = {
            formatters_by_ft={
                c = { "clang_format" },
                cpp = { "clang_format" },
                cuda = { "clang_format" },
            },
            formatters = {
                clang_format = {
                    prepend_args = { "--style={IndentWidth: 4}" }
                },
            },
        },
    },
}