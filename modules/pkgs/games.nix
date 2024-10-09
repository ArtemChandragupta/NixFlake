{ pkgs, ... }:{

environment.systemPackages = with pkgs; [
  ppsspp-sdl-wayland
  pcsx2
  cartridges

  xboxdrv
  
  prismlauncher
];

programs.gamemode = {
  enable = true;
  settings.custom = {
    start = "notify-send 'GameMode started'";
    end   = "notify-send 'GameMode stopped'";
  };
};

}
