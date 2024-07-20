{

wayland.windowManager.hyprland.settings = {
  windowrulev2 = [
    "suppressevent maximize, class:.*"
    "float,class:(clipse)"
    "size 500 700,class:(clipse)"
    "float,class:(org.gnome.Calculator),title:(Calculator)"
    "float,class:(localsend_app)"
    "float,class:(Yad)"
    "float,class:(transmission-gtk)"
    "float,class:(com.saivert.pwvucontrol)"
    "float,class:(.blueman-manager-wrapped)"
    "float,class:(blueberry.py)"
  ];
  layerrule = [
    "animation slide top, swaync-control-center"
    "animation slide top, swaync-notification-window"
  ];
};

}
