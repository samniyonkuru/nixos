{ ... }:

{
  flake.homeModules.neovim =
    { pkgs, ... }:
    {
      programs.neovim = {
        enable = true;
        defaultEditor = true;

        plugins = with pkgs.vimPlugins; [
          gruvbox-nvim
          lualine-nvim
        ];

        initLua = builtins.readFile ./init.lua;
      };

      xdg.configFile."nvim/lua" = {
        source = ./lua;
        recursive = true;
      };
    };
}
