{

programs.bash = {
  enable = true;
  shellAliases = {
    rebuild = "sudo nixos-rebuild switch --flake ~/nix";
    update  = "nix flake update ~/nix && sudo nixos-rebuild switch --flake ~/nix";
    nixU = "nh os switch ~/nix --update";
    nixR = "nh os switch ~/nix";
  };
};

}
