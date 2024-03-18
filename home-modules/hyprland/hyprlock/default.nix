{ inputs, ... }:{

  imports = [
    inputs.hyprlock.homeManagerModules.default
  ];
  
  programs.hyprlock = {
    enable = true;
    
    backgrounds = [
      {
        monitor = "";
        path = "/home/artem/nix/home-modules/hyprland/hyprlock/blue.png";
      }
    ];

    input-fields = [
      {
        monitor = "eDP-1";

        size = {
          width = 300;
          height = 50;
        };

        outline_thickness = 0;
        inner_color = "rgb(458588)";
        font_color  = "rgb(282828)";

        fade_on_empty = false;
        placeholder_text = ''Password:'';

        dots_spacing = 0.3;
        dots_center = true;

        position = {
          x = 0;
          y = -440;
        };
      }
    ];

    labels = [
      {
        monitor = "";
        text = "$TIME";
        font_size = 50;
        color = "rgb(83a598)";

        position = {
          x = 0;
          y = 440;
        };

        valign = "center";
        halign = "center";
      }
    ];
  };
}
