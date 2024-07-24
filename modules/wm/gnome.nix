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
    gnome-tour
    gnome-connections
    gnome-text-editor
    gnome-console
    gnome-keysign
    
    yelp
  ]) ++ (with pkgs.gnome; [
    gnome-terminal
    gnome-contacts
    gnome-logs
    gnome-maps
    gnome-characters
    gnome-color-manager
    gnome-calendar
    
    simple-scan
    seahorse
    epiphany
    geary

    tali
    iagno
    hitori
  ]);
  systemPackages = with pkgs; [ gnome.adwaita-icon-theme ];
};

programs.dconf.enable = true;


}
