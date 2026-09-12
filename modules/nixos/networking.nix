{ ... }:

{
  flake.modules.nixos.networking =
    { ... }:
    {
      networking = {
        hostName = "sam";

        networkmanager.enable = true;
      };
    };
}
