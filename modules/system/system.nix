{ var, ... }:{

nix = {
  settings = { 
    auto-optimise-store = true;
    experimental-features = "nix-command flakes";

    substituters = ["https://hyprland.cachix.org"]; #hyprland cache
    trusted-public-keys = ["hyprland.cachix.org-1:a7pgxzMz7+chwVL3/pzj6jIBMioiJM7ypFP8PwtkuGc="];

    extra-substituters = [ "https://yazi.cachix.org" ]; #Yazi cache
    extra-trusted-public-keys = [ "yazi.cachix.org-1:Dcdz63NZKfvUCbDGngQDAZq6kOroIrFoyO064uvLh8k=" ];
  };
  gc = {
    automatic = true;
    dates = "weekly";
    options = "--delete-older-than 7d";
  };
};

programs.nh = {
  enable = true;
  flake = "/home/${var.username}/nix";
};

nixpkgs.config = {
  permittedInsecurePackages = [];
  allowUnfree = true;
};

hardware.opengl = {
  enable = true;
  driSupport = true;
  driSupport32Bit = true;
};

services.xserver.videoDrivers = ["amdgpu"];

}
