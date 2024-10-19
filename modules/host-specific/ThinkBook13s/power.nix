{

powerManagement.enable = true;

services.auto-cpufreq = { 
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
services.upower.enable = true; # For battery service
# services.power-profiles-daemon.enable = false; 


}
