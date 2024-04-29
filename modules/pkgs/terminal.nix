{ pkgs, ... }:{
environment.systemPackages = with pkgs; [
  kitty
  btop
  fastfetch
  nitch
  mpv
];
}
