{
  plugins.lsp = {
    enable = true;
    servers = {
      # nix
      nixd.enable = true;

      # golang
      gopls = {
        enable = true;
        extraOptions = {	
          ui.completion.usePlaceholders = true;
          formatting.gofumpt = true;
        };
      };

      # docker
      dockerls.enable = true;

      # python
      pyright.enable = true;
    };
  };
}
