{ pkgs }:{
  rofi-menu = pkgs.writeShellApplication {
    name = "rofi-menu";
    runtimeInputs = with pkgs; [rofi-wayland];
    text = ''
      dir="$HOME/.config/rofi/launchers/type-1"
      theme='style-1'

      rofi \
        -show drun \
        -theme "''${dir}"/"''${theme}".rasi
    '';
  };
}
