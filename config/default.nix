{
  # Import all your configuration modules here
  imports = [
    ./none-ls.nix
    ./bufferline.nix
    ./cmp.nix
    ./lsp.nix
    ./plugins.nix
    ./options.nix
    ./colorizer.nix
  ]; 

  colorschemes.catppuccin = {
    enable = true;
    flavour = "mocha";
  };

  clipboard = {
    regitster = "unnamedplus";
    providers.wl-copy.enable = true;
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
