{ pkgs, var, ... }:{

environment.systemPackages = with pkgs; [
  (bottles.override {removeWarningPopup = true;})
  prismlauncher
];

hardware.graphics.enable32Bit = true;

programs.gamemode = {
  enable = true;
  settings.custom = {
    start = "notify-send 'GameMode started'";
    end   = "notify-send 'GameMode stopped'";
  };
};

# programs.haguichi.enable = true;
# services.logmein-hamachi.enable = true;
# services.tailscale.enable = true;

services.syncthing = {
  enable = true;
  user   = "${var.user}";
  dataDir   = "/home/${var.user}/Games/sync";
  configDir = "/home/${var.user}/Games/sync/.config";
  openDefaultPorts = true;
};

}
