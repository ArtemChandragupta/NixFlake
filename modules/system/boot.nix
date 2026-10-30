{ pkgs, ... }:{

boot = {
  loader = {
    timeout = 0;
    systemd-boot.enable = true;
    efi.canTouchEfiVariables = true;
  };

  kernelPackages = pkgs.linuxPackages_latest;
  kernelParams = [
    "quiet"
    "udev.log_level=3"
  ];

  plymouth = {
    enable = true;
    theme  = "bgrt";
  };

  consoleLogLevel = 0;
};

}
