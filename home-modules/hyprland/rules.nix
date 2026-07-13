{ lib, ... }: {

wayland.windowManager.hyprland.settings = {
  window_rule = [
    { match.class = ".*"; suppress_event = "maximize"; }

    { match.class = "localsend_app";             float = true; center = true; }
    { match.class = "Yad";                       float = true; center = true; }
    { match.class = "de.haeckerfelix.Fragments"; float = true; center = true; }

    {
      match.class = "resourceMonitor"; stay_focused = true; pin = true;
      float = true; center = true; size = lib.generators.mkLuaInline "{1200, 900}";
    }
    {
      match.class = "clipse"; stay_focused = true; pin = true;
      float = true; center = true; size = lib.generators.mkLuaInline "{800, 800}";
    }
    {
      match.class = "com.saivert.pwvucontrol";
      float = true; center = true; stay_focused = true; pin = true;
    }

    { match.class = "com.gabm.satty"; no_anim = true; float = true; workspace = "special"; }
    {
      match.class = ".blueman-manager-wrapped";
      animation = "popin"; maximize = true; workspace = "special";
    }

    { match.class = ".Telegram-wrapped"; float = true; center = true; }
    {
      match.class = "org.telegram.desktop"; match.title = "Media viewer";
      float = true; fullscreen = true; animation = "popin"; rounding = 0;
    }
  ];
  layer_rule = [
    { match.class = "swaync-control-center";      animation = "slide top"; }
    { match.class = "swaync-notification-window"; animation = "slide top"; }
    { match.namespace = "^(rofi)$";               animation = "fade"; }
    { match.namespace = "hyprpicker";             animation = "fade"; }
  ];
};

}
