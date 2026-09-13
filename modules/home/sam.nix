{ config, inputs, ... }:

{
  flake.homeModules.sam =
    { ... }:
    {
      imports = [
        config.flake.homeModules.packages
        config.flake.homeModules.zsh
        config.flake.homeModules.git
        config.flake.homeModules.tmux
        config.flake.homeModules.neovim
        config.flake.homeModules.kitty
      ];

      home.username = "sam";
      home.homeDirectory = "/home/sam";
      home.stateVersion = "26.05";

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
