{ pkgs, username, ... }:{

programs.virt-manager.enable = true;

virtualisation = {
  libvirtd = { 
    enable = true;
    qemu = {
      ovmf.enable = true;
      ovmf.packages = [ pkgs.OVMFFull.fd ];
    };
  };
  docker.enable = true;
  spiceUSBRedirection.enable = true;
  waydroid.enable = true;
};

environment.systemPackages = with pkgs; [
  distrobox

  virt-viewer
  spice 
  spice-gtk
  spice-protocol
  win-virtio
  win-spice
];

services.spice-vdagentd.enable = true;

home-manager.users.${username}.dconf = {
  settings = {
    "org/virt-manager/virt-manager/connections" = {
      autoconnect = [ "qemu:///system" ];
      uris = [ "qemu:///system" ];
    };
    "org/gnome/desktop/interface".color-scheme = "prefer-dark";
  };  
};

}
