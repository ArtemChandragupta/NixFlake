{ var, ... }:{

nix = {
  settings = { 
    auto-optimise-store = true;
    experimental-features = "nix-command flakes";
  };
  gc = {
    automatic = true;
    dates     = "weekly";
    options   = "--delete-older-than 7d";
  };
};

programs.nh = {
  enable = true;
  flake  = "/home/${var.user}/nix";
};

services.gvfs.enable     = true; # For trash folder and other
hardware.graphics.enable = true;
# security.polkit.enable   = true;

}
