{ pkgs, var, ... }:{

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

programs.haguichi.enable = true;
services.logmein-hamachi.enable = true;

services.syncthing = {
  enable = true;
  user   = "${var.user}";
  dataDir   = "/home/${var.user}/Sync";
  configDir = "/home/${var.user}/Sync/.config";
};

}
