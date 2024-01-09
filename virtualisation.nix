{ pkgs, config, ... }:
{

programs = {
  dconf.enable = true;
  virt-manager.enable = true;
};

virtualisation = {
  libvirtd.enable = true;
  docker.enable = true;
};

environment.systemPackages = with pkgs; [
  distrobox
  ppsspp
  bottles
];

}
