{ pkgs, ... }:{

services.flatpak.enable = true;
environment.systemPackages = [ pkgs.gnome-software ];

systemd.services.flatpak-repo = { # Auto add flathub repo
  wantedBy = [ "multi-user.target" ];
  path     = [ pkgs.flatpak        ];
  script   = "flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo";
};

}
