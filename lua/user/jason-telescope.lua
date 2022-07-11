local M = {}

function M.edit_nvim() 
  require("telescope.builtin").find_files(
    {
      shorten_path = true,
      cwd = "~/AppData/Local/nvim",
      prompt = "Neovim Config Files", -- Doesn't work
      height = 10,
      file_ignore_patterns = { ".git" },
      layout_strategy = "horizontal",
      layout_options = {
        preview_width = 0.75,
      }
    }
  )
end

function M.project_search() 
  require("telescope.builtin").find_files(
    {
      shorten_path = true,
      --search_dirs = {"~/coding-stuff/H4I/y-knot/src/"},
      cwd = "~/coding-stuff/H4I/y-knot/src/",
      prompt = "y-knot",
      height = 10,
      layout_strategy = "horizontal",
      layout_options = {
        preview_width = 0.75,
      }
    }
  )
end

function M.search_cheat_sheets() 
  require("telescope.builtin").find_files(
    {
      shorten_path = true,
      --search_dirs = {"~/coding-stuff/H4I/y-knot/src/"},
      cwd = "C:/Users/13018/coding-stuff/cheat-sheets",
      prompt = "y-knot",
      height = 10,
      layout_strategy = "horizontal",
      layout_options = {
        preview_width = 0.75,
      }
    }
  )
end

return M

