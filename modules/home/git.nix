{ ... }:

{
  flake.homeModules.git =
    { ... }:
    {
      programs.git = {
        enable = true;

        settings = {
          user = {
            name = "Samuel Niyonkuru";
            email = "samniyonkuru@gmail.com";
          };

          init.defaultBranch = "main";
        };
      };
    };
}
