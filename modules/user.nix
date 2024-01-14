{ pkgs, config, lib, ... }:{

users.users.artem = {
  isNormalUser = true;
  description = "artem";
  extraGroups = [ "networkmanager" "wheel" "audio" "video" "input" "libvirtd" "docker" ];
  packages = with pkgs; [];
};

}
