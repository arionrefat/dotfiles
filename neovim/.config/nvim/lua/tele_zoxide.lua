local z_utils = require("telescope._extensions.zoxide.utils")

require("telescope._extensions.zoxide.config").setup({
  prompt_title = "[ Walking on the shoulders of TJ ]",
  mappings = {
    default = {
      after_action = function(selection)
        print("Update to (" .. selection.z_score .. ") " .. selection.path)
      end
    },
    ["<C-s>"] = {
      before_action = function(selection) print("before C-s") end,
      action = function(selection)
        vim.cmd("edit " .. selection.path)
      end
    },
    ["<C-q>"] = { action = z_utils.create_basic_command("split") },
  }
})

