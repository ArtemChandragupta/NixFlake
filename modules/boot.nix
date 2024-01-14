{ pkgs, config, lib, ... }:{

boot = { 
  loader = {
    timeout = 0;
    systemd-boot.enable = true;
    efi.canTouchEfiVariables = true;
  };

  kernelPackages = pkgs.linuxPackages_latest;
  kernelParams = [
    "amd_pstate=active"
    "quiet"
    "udev.log_level=0" 
  ];
  extraModulePackages = with config.boot.kernelPackages; [ zenpower ];

  plymouth = { 
    enable = true;
    theme = "bgrt";
  };

  initrd.verbose = false;
  consoleLogLevel = 0;
};

services = {
  getty.autologinUser = "artem";
};

}
