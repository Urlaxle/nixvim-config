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
    ./plugins/treesitter.nix
    ./plugins/lualine.nix
    ./plugins/lint.nix
    ./plugins/lsp.nix
    ./plugins/comment.nix
    ./plugins/icons.nix
    ./plugins/trouble.nix
    ./plugins/trunk.nix
    ./plugins/autopairs.nix
    ./plugins/blink.nix
    ./plugins/cmp.nix
    ./plugins/comment-box.nix
    ./plugins/conform.nix
    ./plugins/gitsigns.nix
    ./plugins/lz-n.nix
    ./plugins/markview.nix
    ./plugins/neoscroll.nix
    ./plugins/neotree.nix
    ./plugins/noice.nix
    ./plugins/none-ls.nix
    ./plugins/oil.nix
    ./plugins/oil.nix
    ./plugins/schemastore.nix

  ];
}
