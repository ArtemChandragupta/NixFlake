{ var, ... }:{

nix = {
  settings = { 
    auto-optimise-store = true;
    experimental-features = "nix-command flakes";
    warn-dirty = false;
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
security.soteria.enable  = true; # For polkit authentification

}
