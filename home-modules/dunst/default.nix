{ pkgs, config, lib, ... }:{

  services.dunst = {
    package = pkgs.dunst; 
    enable = true;
};

}
