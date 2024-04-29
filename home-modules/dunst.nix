{ pkgs, ... }:{
  services.dunst = {
    package = pkgs.dunst; 
    enable = true;
  };
}
