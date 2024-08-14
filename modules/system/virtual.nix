{ pkgs, var, ... }:{

programs.virt-manager.enable = true;

virtualisation = {
  libvirtd = { 
    enable = true;
    qemu = {
      ovmf.enable   = true;
      ovmf.packages = [ pkgs.OVMFFull.fd ];
    };
  };
  docker.enable = true;
  spiceUSBRedirection.enable = true;
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

home-manager.users.${var.username}.dconf.settings = {
  "org/virt-manager/virt-manager/connections" = {
    autoconnect = [ "qemu:///system" ];
    uris = [ "qemu:///system" ];
  };  
};

}
