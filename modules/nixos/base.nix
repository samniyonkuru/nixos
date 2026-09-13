{ inputs, ... }:

let
  pkgs = inputs.nixpkgs.legacyPackages.x86_64-linux;
in
{
  flake.modules.nixos.base =
    { ... }:
    {
      nix.settings = {
        experimental-features = [
          "nix-command"
          "flakes"
        ];

        trusted-users = [
          "root"
          "sam"
        ];

        auto-optimise-store = true;
      };

      programs.zsh.enable = true;

      users.users.sam = {
        isNormalUser = true;

        extraGroups = [
          "wheel"
          "networkmanager"
        ];

        shell = pkgs.zsh;
      };

      time.timeZone = "Europe/Amsterdam";

      system.stateVersion = "26.02";
    };
}
