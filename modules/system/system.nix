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
  flake  = "/home/${var.username}/nix";
};

nixpkgs.config = {
  permittedInsecurePackages = [];
  allowUnfree = true;
};

hardware.graphics.enable = true;

}
