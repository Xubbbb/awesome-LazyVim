return {
    "akinsho/bufferline.nvim",
    opts = {
      options = {
        max_name_length = 999,
        max_prefix_length = 999,
        name_formatter = function(buf)
            -- get the open file's absolute path
            local abs_path = vim.fn.fnamemodify(buf.path, ":p")
            -- get the root dir's absolute path
            local cwd = vim.fn.getcwd()
            -- if the openning file is under root dir, show relative path
            if abs_path:sub(1, #cwd) == cwd then
                return vim.fn.fnamemodify(buf.path, ":.")
            else
            -- else show absolute path
                return abs_path
            end
        end,
      }
    },
}