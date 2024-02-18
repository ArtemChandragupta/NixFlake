{ pkgs, ... }:{

  services.xserver = {
    enable = true;
    displayManager.sddm = {
      enable = true;
      theme = "${ import ./sddm-theme.nix { inherit pkgs; } }";
    };
  };

  
environment.systemPackages = [
pkgs.libsForQt5.qt5.qtgraphicaleffects  
pkgs.libsForQt5.qt5.qtquickcontrols2
];
  
}
