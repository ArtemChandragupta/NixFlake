{
programs.bash.shellAliases = {
  rebuild = "sudo nixos-rebuild switch --flake ~/nix";
  update  = "nix flake update ~/nix && sudo nixos-rebuild switch --flake ~/nix";
};
}
