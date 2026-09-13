{ ... }:

{
  flake.homeModules.bash =
    { ... }:
    {
      programs.bash = {
        enable = true;

        shellAliases = {
          gt = "tree --gitignore";
          n = "nvim";
        };

        initExtra = ''
          export DIRENV_LOG_FORMAT=""

          set_bash_prompt() {
            local reset="\[\e[0m\]"
            local path_color="\[\e[38;5;142m\]"
            local prompt_color="\[\e[38;5;167m\]"

            PS1="''${path_color}\w''${reset}\n''${prompt_color}>''${reset} "
          }

          PROMPT_COMMAND=set_bash_prompt
        '';
      };

      programs.direnv = {
        enable = true;
        enableBashIntegration = true;
        nix-direnv.enable = true;
      };
    };
}
