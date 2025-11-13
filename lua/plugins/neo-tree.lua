return{
    "nvim-neo-tree/neo-tree.nvim",branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "MunifTanjim/nui.nvim",
        "nvim-tree/nvim-web-devicons"
    },
        lazy = false, 
    config = function()
        filesystem = {
            filtered_items = {
              visible = false, 
              hide_dotfiles = true,
              hide_gitignored = true,
              hide_ignored = true, 
              ignore_files = {
                ".neotreeignore",
                ".ignore",
              },
            }
        },
        vim.keymap.set('n','<C-e>',':Neotree toggle<CR>',{})
    end
}
