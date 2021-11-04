require('kommentary.config').use_extended_mappings()

vim.api.nvim_set_keymap("n", "<leader>cic", "<Plug>kommentary_line_increase", {})
vim.api.nvim_set_keymap("n", "<leader>ci", "<Plug>kommentary_motion_increase", {})
vim.api.nvim_set_keymap("x", "<leader>ci", "<Plug>kommentary_visual_increase", {})
vim.api.nvim_set_keymap("n", "<leader>cdc", "<Plug>kommentary_line_decrease", {})
vim.api.nvim_set_keymap("n", "<leader>cd", "<Plug>kommentary_motion_decrease", {})
vim.api.nvim_set_keymap("x", "<leader>cd", "<Plug>kommentary_visual_decrease", {})

local config = require('kommentary.config')

--[[ This function will be called automatically by the mapping, the first
argument will be the line that is being operated on. ]]
function insert_comment_below(...)
    local args = {...}
    -- This includes the commentstring
    local configuration = config.get_config(0)
    local line_number = args[1]
    -- Get the current content of the line
    local content = vim.api.nvim_buf_get_lines(0, line_number-1, line_number, false)[1]
    --[[ Get the level of indentation of that line (Find the index of the
    first non-whitespace character) ]]
    local indentation = string.find(content, "%S")
    --[[ Create a string with that indentation, with a dot at the end so that
    kommentary respects that indentation ]]
    local new_line = string.rep(" ", indentation-1) .. "."
    -- Insert the new line underneath the current one
    vim.api.nvim_buf_set_lines(0, line_number, line_number, false, {new_line})
    -- Comment in the new line
    require('kommentary.kommentary').comment_in_line(line_number+1, configuration)
    -- Set the cursor to the correct position
    vim.api.nvim_win_set_cursor(0, {vim.api.nvim_win_get_cursor(0)[1]+1, #new_line+2})
    -- Change the char under cursor (.)
    vim.api.nvim_feedkeys("cl", "n", false)
end

--[[ This is a method provided by kommentary's config, it will take care of
setting up a <Plug> mapping. The last argument is the optional callback
function, meaning when we execute this mapping, this function will be
called instead of the default. --]]
config.add_keymap("n", "kommentary_insert_below", config.context.line, {}, "insert_comment_below")
-- Set up a regular keymapping to the new <Plug> mapping
vim.api.nvim_set_keymap('n', '<leader>co', '<Plug>kommentary_insert_below', { silent = true })

