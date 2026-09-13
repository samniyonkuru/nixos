{ ... }:

{
  flake.modules.nixos.desktop =
  { pkgs, ... }:
  {
    fonts.packages = with pkgs; [
      nerd-fonts.jetbrains-mono
    ];
    services.xserver = {
      enable = true;

      xkb.layout = "us";

      windowManager.xmonad = {
        enable = true;
        enableContribAndExtras = true;

      };

      displayManager.sessionCommands = ''
        if xrandr | grep "HDMI-1 connected"; then
          xrandr \
            --output HDMI-1 \
            --mode 3440x1440 \
            --primary \
            --output eDP-1 \
            --off
            fi
            '';
    };
  };
}
