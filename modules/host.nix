{ config, inputs, ... }:

{
  flake.nixosConfigurations.sam =
    inputs.nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";

      modules = [
        ../hardware-configuration.nix

        config.flake.modules.nixos.base
        config.flake.modules.nixos.boot
        config.flake.modules.nixos.networking
        config.flake.modules.nixos.bluetooth
        config.flake.modules.nixos.desktop
      ];
    };
}
