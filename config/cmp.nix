{
  plugins = {
    cmp-nvim-lsp.enable = true;
    cmp-buffer.enable = true;
    cmp-path.enable = true;
    cmp_luasnip.enable = true;
    luasnip.enable = true;
    

    nvim-cmp = {
      enable = true;
      autoEnableSources = true;
      sources = [
        {name = "nvim_lsp";}
        {name = "path";}
        {name = "buffer";}
        {name = "luasnip";}
      ];
      snippet.expand = "luasnip";

      mapping = {
        "<CR>" = "cmp.mapping.confirm({ select = true })";
        "<Tab>" = {
              action = ''
              function(fallback)
                    local luasnip = require 'luasnip'
                    if cmp.visible() then
                      cmp.select_next_item()
                    -- You could replace the expand_or_jumpable() calls with expand_or_locally_jumpable()
                    -- that way you will only jump inside the snippet region
                    elseif luasnip.expand_or_locally_jumpable() then
                      luasnip.expand_or_jump()
                    else
                      fallback()
                    end
                  end'';
              modes = ["i" "s"];
            };
            "<S-Tab>" = {
              action = ''
              function(fallback)
                    local luasnip = require 'luasnip'
                    if cmp.visible() then
                      cmp.select_prev_item()
                    elseif luasnip.jumpable(-1) then
                      luasnip.jump(-1)
                    else
                      fallback()
                    end
                  end
              '';
              modes = [ "i" "s" ];
            };
          };
        };
  };
}
