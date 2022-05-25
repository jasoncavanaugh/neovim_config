local M = {}

function M.edit_nvim() 
  require("telescope.builtin").find_files(
    {
      shorten_path = true,
      cwd = "~/AppData/Local/nvim",
      prompt = "Neovim Config Files",
      height = 10,

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

return M

