{

programs.bash = {
  enable = true;
  shellAliases = {
    rebuild = "sudo nixos-rebuild switch --flake ~/nix";
    update  = "nix flake update ~/nix && sudo nixos-rebuild switch --flake ~/nix";
    nu = "nh os switch ~/nix --update";
    nr = "nh os switch ~/nix";
  };
};

}
