{ config, pkgs, inputs, ... }:{
home-manager.users.artem = {

home.file = {
  ".config/hypr/hyprpaper.conf".text = ''
    preload = ~/.config/hypr/hyprpaper.jpg
    wallpaper = eDP-1, ~/.config/hypr/hyprpaper.jpg
    ipc = off
  '';
  
  ".config/hypr/hyprpaper.jpg".source = ./hyprpaper.jpg;
};

};	
}
