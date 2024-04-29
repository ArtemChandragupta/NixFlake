{ pkgs, ... }:{
  services.xserver.desktopManager.gnome.enable = true;
  environment = {
    gnome.excludePackages = (with pkgs; [
      gnome-tour
    ]) ++ (with pkgs.gnome; [
      gnome-music
      gnome-terminal
      epiphany
      geary
      nautilus

      tali
      iagno
      hitori
      atomix
    ]);

    systemPackages = with pkgs; [
      gnome.adwaita-icon-theme
    ];
  };

  programs.dconf = {
    enable = true;
    #settings."org/gnome/desktop/interface".color-scheme = "prefer-dark";
  };
}
