{ username, ... }:{
  xdg.configFile."/home/${username}/.config/neovide/config.toml".text = ''
    [font]
    normal = ["monospace"]
    size = 15
  '';
}
