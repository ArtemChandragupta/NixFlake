{ pkgs, config, ... }:{

environment.systemPackages = with pkgs; [
  amdgpu_top
  microcodeAmd
];

boot = { 
  #kernelParams = [ "amd_pstate=active" "processor.max_cstate=1" ];
  #extraModulePackages = with config.boot.kernelPackages; [ zenpower ];
};

services.xserver.videoDrivers = ["amdgpu"];

}
