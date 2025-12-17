{

  # Create a vim alias
  vimAlias = true; # puts a `vim` symlink → nvim
  viAlias = true; # optional

  # Import all your configuration modules here
  imports = [
    ./options.nix
    ./keymapping.nix
    ./plugins/colorscheme.nix
    ./plugins/bufferline.nix
    ./plugins/telescope.nix
    ./plugins/neotree.nix
    ./plugins/treesitter.nix
    ./plugins/lualine.nix
    ./plugins/lint.nix
    ./plugins/lsp.nix
    ./plugins/cmp.nix

    # Allows me to make comments with <leader>/ 
    ./plugins/comment.nix

    # Adds Nerdfont icons
    ./plugins/icons.nix

    # Makes symbols such as ( come with an autooclosing pair
    ./plugins/autopairs.nix

    # Comments in boxes 
    ./plugins/comment-box.nix
  ];
}

# To add one with time 
  #imports = [
    #./plugins/trouble.nix
    #./plugins/blink.nix
    #./plugins/gitsigns.nix
    #./plugins/lz-n.nix
    #./plugins/markview.nix
    #./plugins/none-ls.nix
#
#  ];