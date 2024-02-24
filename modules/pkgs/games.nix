{ pkgs, ... }:{
environment.systemPackages = with pkgs; [

ppsspp
bottles
moonlight-qt
remmina
lutris
dosbox-x

];

programs.gamemode = {
  enable = true;
  settings = {
    custom = {
      start = "${pkgs.libnotify}/bin/notify-send 'GameMode started'";
      end = "${pkgs.libnotify}/bin/notify-send 'GameMode ended'";
    };
  };
};

}
