{ ... }:

{
  flake.homeModules.kitty =
    { ... }:
    {
      programs.kitty = {
        enable = true;

        font = {
          name = "JetBrainsMono Nerd Font Mono";
          size = 17;
        };

        themeFile = "gruvbox-dark";

        settings = {
          window_padding_width = 5;
          copy_on_select = "clipboard";
          enable_audio_bell = false;
        };
      };
    };
}
