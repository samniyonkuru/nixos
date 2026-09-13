{ ... }:

{
  flake.homeModules.packages =
    { pkgs, ... }:
    {
      home.packages = with pkgs; [
	xclip
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
