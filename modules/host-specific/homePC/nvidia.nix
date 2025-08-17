{

services.xserver.videoDrivers = ["nvidia"];

hardware.nvidia = {
  modesetting.enable = true;
  powerManagement.enable = true;
  open = true;
  nvidiaSettings = true;
};

}
