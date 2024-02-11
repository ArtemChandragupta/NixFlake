{ pkgs, config, lib, ... }:{
environment.systemPackages = with pkgs; [

kitty
btop
fastfetch
nitch
micro
mpv
neovim
vim

];
}
