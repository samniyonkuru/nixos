{ ... }:

{
  flake.homeModules.tmux =
    { pkgs, ... }:
    {
      programs.tmux = {
        enable = true;

        prefix = "M-x";
        aggressiveResize = false;
        baseIndex = 1;
        focusEvents = false;
        historyLimit = 2000;
        keyMode = "emacs";
        mouse = true;
        escapeTime = 10;
        terminal = "screen";

        plugins = with pkgs.tmuxPlugins; [
          gruvbox
        ];

        extraConfig = ''
          set -g status-position top
          set -g status-right ""
          '';
      };
    };
}
