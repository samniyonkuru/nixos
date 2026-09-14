{ ... }:

{
  flake.homeModules.zsh =
    { pkgs, ... }:
    {
      programs.zsh = {
        enable = true;

        shellAliases = {
          ls = "lsd -l";
          cat = "bat";
          n = "nvim";
          uHome = "home-manager switch --flake .#sam";
          uSystem = "sudo nixos-rebuild switch --flake .#sam";
          sSam = "ssh sam@13.140.190.145";
          sOdoo= "ssh sam@161.97.122.94";
        };

        initContent = builtins.readFile ./init.zsh;
      };

      home.packages = with pkgs; [
        carapace
        fzf
        lsd
        bat
        any-nix-shell
      ];
    };
}
