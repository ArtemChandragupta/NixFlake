{ pkgs, ... }:{

environment.systemPackages = with pkgs; [
  kitty
  fastfetch
  nitch
  mpv
];

}
