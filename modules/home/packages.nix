{ ... }:

{
  flake.homeModules.packages =
    { pkgs, ... }:
    {
      home.packages = with pkgs; [
        ripgrep
        fd
        brightnessctl
        xmobar
        xsecurelock
        direnv
	devenv
        firefox
      ];
    };
}
