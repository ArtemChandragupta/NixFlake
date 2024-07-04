{ pkgs }:{

rofi-cliphist-img = pkgs.writeShellApplication {
  name = "rofi-cliphist";
  runtimeInputs = with pkgs; [rofi-wayland];
  text = ''
    rofi \
      -modi clipboard:.config/rofi/launchers/rofi-cliphist/rofi-cliphist.sh -show clipboard  \
      -theme .config/rofi/launchers/rofi-cliphist/style.rasi
  '';
};

}
