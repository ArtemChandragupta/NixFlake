{ pkgs, ... }:{
  services.greetd = {
    enable = true;
    vt = 7;
    settings.default_session = with pkgs; {
      command = "${cage}/bin/cage -s ${greetd.gtkgreet}/bin/gtkgreet --remember -l --cmd Hyprland  /etc/greetd/style.css";
    };
  };

environment.systemPackages = with pkgs; [ greetd.gtkgreet ];
  environment.etc = {
    "greetd/style.css".source = ./style.css;
    "greetd/hello.jpg".source = ./hello.jpg;
  };
}
