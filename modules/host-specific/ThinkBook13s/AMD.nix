{

hardware.cpu.amd.updateMicrocode = true;
boot.kernelParams = [ "amd_pstate=active" ];
services.xserver.videoDrivers = ["amdgpu"];

}
