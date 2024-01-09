{ pkgs, config, ... }:
{
boot = {
  kernelPackages = pkgs.linuxPackages_latest;
  kernelParams = [
    "amd_pstate=active"
  ];
  extraModulePackages = with config.boot.kernelPackages; [ zenpower ];
};
}
