{ self, ... }:
{
  keymaps =
    [
      # Neo-tree bindings
      {
        action = "<cmd>Neotree toggle<CR>";
        key = "<leader>e";
      }

      # Commentary bindings
      {
        action = "<cmd>Commentary<CR>";
        key = "<leader>/";
      }

      # Telescope bindings
      { action = "<cmd>Telescope live_grep<CR>"; key = "<leader>fw"; }
      { action = "<cmd>Telescope find_files<CR>"; key = "<leader>ff"; }
      { action = "<cmd>Telescope git_commits<CR>"; key = "<leader>fg"; }
      { action = "<cmd>Telescope oldfiles<CR>"; key = "<leader>fh"; }
      { action = "<cmd>Telescope colorscheme<CR>"; key = "<leader>ch"; }
      { action = "<cmd>Telescope man_pages<CR>"; key = "<leader>fm"; }
      { action = "<cmd>Telescope buffers<CR>"; key = "<leader>fb"; }

      # Buffer bindings
      {
        mode = "n";
        key = "<Tab>";
        action = "<cmd>BufferLineCycleNext<cr>";
        options.desc = "Cycle to next buffer";
      }
      {
        mode = "n";
        key = "<S-Tab>";
        action = "<cmd>BufferLineCyclePrev<cr>";
        options.desc = "Cycle to previous buffer";
      }
      {
        mode = "n";
        key = "<leader>d";
        action = "<cmd>BufferLinePickClose<cr>";
        options.desc = "Delete buffer";
      }
    ]
    ++
    (builtins.genList
      (i:
        let n = i + 1;
        in {
          mode = "n";
          key = "<leader>${toString n}";
          action = "<cmd>BufferLineGoToBuffer ${toString n}<cr>";
          options.desc = "Go to buffer ${toString n}";
        })
      9);
}