{ pkgs, ... }:{

environment.systemPackages = with pkgs; [
  ppsspp
  bottles
  cartridges
  
  moonlight-qt
  remmina
  
  xboxdrv
  
  prismlauncher
];

programs.gamemode = {
  enable = true;
  settings.custom = {
    start = "${pkgs.libnotify}/bin/notify-send 'GameMode started'";
    end   = "${pkgs.libnotify}/bin/notify-send 'GameMode ended'";
  };
};

}
