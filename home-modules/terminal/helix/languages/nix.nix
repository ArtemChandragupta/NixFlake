{ pkgs, var, ... }:{

programs.helix = {
  extraPackages = [ pkgs.nixd ];
  languages.language-server.nixd = {
    command = "nixd";
    args = [ "--semantic-tokens=true" ];
    config.nixd =
      let
        myFlake = "(builtins.getFlake (toString /home/${var.user}/nix))";
        nixosOpts = "${myFlake}.nixosConfigurations.${var.host}.options";
      in {
        nixpkgs.expr = "import ${myFlake}.inputs.nixpkgs { }";
        options = {
          nixos.expr = nixosOpts;
          home-manager.expr = "${nixosOpts}.home-manager.users.type.getSubOptions []";
        };
      };
  };
};

}
