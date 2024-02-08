{
  # Import all your configuration modules here
  imports = [
    ./bufferline.nix
    ./cmp.nix
    ./lsp.nix
    ./plugins.nix
    ./options.nix
  ]; 

  colorschemes.catppuccin = {
    enable = true;
    flavour = "mocha";
  };

  globals.mapleader = ",";
  keymaps = [
     # Equivalent to nnoremap ; :
    {
      key = ";";
      action = ":";
    }
     # Equivalent to nmap <silent> <buffer> <leader>gg <cmd>Man<CR>
    {
      key = "<leader>gg";
      action = "<cmd>Man<CR>";
      options = {
        silent = true;
        remap = false;
      };
    }
    # Etc...
  ];
}
