{ pkgs }:{

rofi-cliphist-img = pkgs.writeShellApplication {
  name = "rofi-cliphist-img";
  runtimeInputs = with pkgs; [rofi-wayland];
  text = ''
    rofi \
      -modi clipboard:.config/rofi/launchers/rofi-cliphist-img/rofi-cliphist.sh -show clipboard -show-icons \
      -theme .config/rofi/launchers/rofi-cliphist-img/style.rasi
  '';
};

}
