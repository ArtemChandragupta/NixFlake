{
programs.hyprlock = {
  enable = true;
  settings = {
    background = [
      {
        monitor = "";
        path = "/home/artem/nix/home-modules/hyprland/hyprlock/blue.png";
      }
    ];

    input-field = [
      {
        monitor = "";

        size = "300, 50";

        outline_thickness = 0;
        inner_color = "rgb(458588)";
        font_color  = "rgb(282828)";

        fade_on_empty = false;
        placeholder_text = ''Password:'';

        dots_spacing = 0.3;
        dots_center = true;

        position = "0, -440";
      }
    ];

    label = [
      {
        monitor = "";
        text = "$TIME";
        font_size = 50;
        color = "rgb(83a598)";

        position = "0, 440";

        valign = "center";
        halign = "center";
      }
    ];
  };
};
}
