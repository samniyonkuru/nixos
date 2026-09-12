{ ... }:

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

      users.users.sam = {
        isNormalUser = true;

        extraGroups = [
          "wheel"
          "networkmanager"
        ];
      };

      time.timeZone = "Europe/Amsterdam";

      system.stateVersion = "25.11";
    };
}
