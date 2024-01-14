{ pkgs, config, lib, ... }:{

programs = {
  hyprland = {
    enable = true;
    xwayland.enable = true;
  };
};

services.dbus.enable = true;

# Enable Display Manager
services.greetd = {
  enable = true;
  settings = {
    default_session = {
      command = "${pkgs.greetd.tuigreet}/bin/tuigreet --remember --greeting 'Welcome to Wonderland' --time --time-format '%I:%M %p | %a • %h | %F' --cmd Hyprland";
      user = "greeter";
    };
  };
};

environment.systemPackages = with pkgs; [
  greetd.tuigreet
];

}
