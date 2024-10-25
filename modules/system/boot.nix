{ var, pkgs, ... }:{

boot = { 
  loader = {
    timeout = 0;
    systemd-boot.enable = true;
    efi.canTouchEfiVariables = true;
  };

  kernelPackages = if var.host == "ThinkBook13s"
    then pkgs.linuxPackages_latest
    else pkgs.linuxPackages;
  kernelParams = [
    "quiet"
    "udev.log_level=0" 
  ];

  plymouth = {
    enable = true;
    theme  = "bgrt";
  };

  initrd.verbose  = false;
  consoleLogLevel = 0;
};

}
