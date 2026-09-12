{ config, inputs, ... }:

{
  flake.homeModules.sam =
    { ... }:
    {
      imports = [
        config.flake.homeModules.packages
        config.flake.homeModules.git
        config.flake.homeModules.tmux
        config.flake.homeModules.neovim
        config.flake.homeModules.alacritty
      ];

      home.username = "sam";
      home.homeDirectory = "/home/sam";
      home.stateVersion = "25.11";

      programs.home-manager.enable = true;
    };

  flake.homeConfigurations.sam =
    inputs.home-manager.lib.homeManagerConfiguration {
      pkgs = inputs.nixpkgs.legacyPackages.x86_64-linux;

      modules = [
        config.flake.homeModules.sam
      ];
    };
}
