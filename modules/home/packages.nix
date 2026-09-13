{ ... }:

{
  flake.homeModules.packages =
    { pkgs, ... }:
    {
      home.packages = with pkgs; [
        ripgrep
        fd
        tree
        brightnessctl
        xmobar
        xsecurelock
        direnv
        devenv
        firefox
      ];
    };
}
