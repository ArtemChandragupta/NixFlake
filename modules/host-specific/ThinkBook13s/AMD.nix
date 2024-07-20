{ pkgs, config, ... }:{

environment.systemPackages = with pkgs; [
  amdgpu_top
];

boot = { 
  kernelParams = ["amd_pstate=active"];
  extraModulePackages = with config.boot.kernelPackages; [ zenpower ];
};

services.xserver.videoDrivers = ["amdgpu"];

}
