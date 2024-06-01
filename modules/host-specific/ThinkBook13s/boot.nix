{ config, ... }:{

boot = { 
  kernelParams = ["amd_pstate=active"];
  extraModulePackages = with config.boot.kernelPackages; [ zenpower ];
};

}
