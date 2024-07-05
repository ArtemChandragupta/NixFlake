{ pkgs, ... }:{

environment.systemPackages = with pkgs; [
  ppsspp
  moonlight-qt
  remmina
  dosbox-x
  amdgpu_top
  xboxdrv
  bottles
  prismlauncher
];

programs = {
  gamemode = {
    enable = true;
    settings.custom = {
      start = "${pkgs.libnotify}/bin/notify-send 'GameMode started'";
      end   = "${pkgs.libnotify}/bin/notify-send 'GameMode ended'";
    };
  };
  steam.enable = true;
};

}
