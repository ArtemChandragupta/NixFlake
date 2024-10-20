{ pkgs, ...}:let
  open-clip = pkgs.writers.writeNuBin "open-clip"
    (builtins.readFile ./open-clip.nu);
in{

home.packages = [
  pkgs.clipse
  pkgs.wl-clipboard
  open-clip
];

home.file = {
  ".config/clipse/gruvbox.json".source = ./gruvbox.json;
  ".config/clipse/config.json".source  = ./config.json;
};

wayland.windowManager.hyprland.settings = {
  exec-once    = [ "clipse -listen" ];
  windowrulev2 = [
    "float,        class:(clipse)"
    "size 800 800, class:(clipse)"
  ];
};

}
