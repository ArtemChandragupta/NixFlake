{ pkgs, ... }:{

home.packages = with pkgs; [
  neovide
];

home.file.".config/neovide/config.toml".text = ''
  [font]
  normal = ["monospace"]
  size = 12
'';

}
