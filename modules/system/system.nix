{ var, ... }:{

nix = {
  settings = { 
    auto-optimise-store = true;
    experimental-features = "nix-command flakes";

    substituters = [
      "https://hyprland.cachix.org"
    ];
    trusted-public-keys = [
      "hyprland.cachix.org-1:a7pgxzMz7+chwVL3/pzj6jIBMioiJM7ypFP8PwtkuGc="
    ];
    extra-substituters = [
      "https://yazi.cachix.org"
      "https://anyrun.cachix.org"
    ];
    extra-trusted-public-keys = [
      "yazi.cachix.org-1:Dcdz63NZKfvUCbDGngQDAZq6kOroIrFoyO064uvLh8k="
      "anyrun.cachix.org-1:pqBobmOjI7nKlsUMV25u9QHa9btJK65/C8vnO3p346s="
    ];
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

hardware.opengl.enable = true;

services.xserver.videoDrivers = ["amdgpu"];

}
