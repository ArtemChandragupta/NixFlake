{

imports = [
  ./script.nix
];

programs = {
  nushell = {
    enable = true;
    configFile.source = ./config.nu;
    shellAliases = {
      rebuild = "sudo nixos-rebuild switch --flake ~/nix";
      update  = "nix flake update ~/nix and sudo nixos-rebuild switch --flake ~/nix";
      nixU = "nh os switch ~/nix --update";
      nixR = "nh os switch ~/nix";
    };
  };
  carapace = {
    enable = true;
    enableNushellIntegration = true;
  };
};

}
