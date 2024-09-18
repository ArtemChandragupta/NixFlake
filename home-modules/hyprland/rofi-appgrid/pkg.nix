{ pkgs }:{

rofi-appgrid = pkgs.writeShellApplication {
  name = "rofi-appgrid";
  runtimeInputs = with pkgs; [rofi-wayland];
  text = ''
    rofi \
      -show drun \
      -theme .config/rofi/launchers/rofi-appgrid/style.rasi
  '';
};

}
