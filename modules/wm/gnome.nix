{ pkgs, ... }:{

services = {
  xserver = {
    enable = true;
    excludePackages = [ pkgs.xterm ];
    displayManager.gdm = {
      enable  = true;
      wayland = true;
    };
    desktopManager.gnome.enable = true;
  };
  gnome.rygel.enable = false;
};

environment = {
  gnome.excludePackages = (with pkgs; [
    gnome-connections
    gnome-text-editor
    gnome-terminal
    gnome-calendar
    gnome-console
    gnome-keysign
    gnome-tour
    
    simple-scan
    epiphany
    seahorse
    geary
    yelp
  ]) ++ (with pkgs.gnome; [
    gnome-maps
    gnome-characters
    gnome-color-manager
    gnome-contacts
    gnome-logs

    iagno
    hitori
    iagno
  ]);
  systemPackages = with pkgs; [ adwaita-icon-theme ];
};

programs.dconf.enable = true;


}
