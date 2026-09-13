{ inputs, ... }:

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
        inputs.devenv.packages.${pkgs.system}.devenv
        firefox
        flameshot
      ];
    };
}
