{

# zenpower module in ./kernel.nix also about it

powerManagement.enable = true;

services = {
  auto-cpufreq = { 
    enable = true;
    settings = {
    
      battery =  { 
        governor = "powersave";
        turbo    = "never";
      };
      
      charger = {
        governor = "powersave";
        turbo    = "auto";
      };
      
    };
  };
  power-profiles-daemon.enable = false;
};

}
