{ pkgs, var, ... }:{

programs.virt-manager.enable = true;

virtualisation = {
  libvirtd = { 
    enable = true;
    qemu.ovmf = {
      enable   = true;
      packages = [ pkgs.OVMFFull.fd ];
    };
  };
  docker.enable = true;
  spiceUSBRedirection.enable = true;
};

environment.systemPackages = with pkgs; [
  distrobox

  spice 
  spice-gtk
  spice-protocol
  win-spice
];

services.spice-vdagentd.enable = true;

home-manager.users.${var.user}.dconf.settings = {
  "org/virt-manager/virt-manager/connections" = {
    autoconnect = [ "qemu:///system" ];
    uris = [ "qemu:///system" ];
  };  
};

}
