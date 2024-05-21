{
  plugins.lsp-format.enable = true;

  plugins.none-ls = {
    enable = true;
    enableLspFormat = true;
    sources = {
      formatting = {
        black.enable = true;
        gofmt.enable = true;
        markdownlint.enable = true;
        nixfmt.enable = true;
      };
    };
  };
}
