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

      # c/c++
      clangd.enable = true;

      # docker
      dockerls.enable = true;

      # python
      pyright.enable = true;
      ruff-lsp.enable = true;
    };
  };
}
