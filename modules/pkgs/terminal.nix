{ pkgs, ... }:{
environment.systemPackages = with pkgs; [
  kitty
  alacritty
  fastfetch
  nitch
  mpv
];
}
