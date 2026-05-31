{ lib, ... }: {

wayland.windowManager.hyprland.settings.window_rule = [
  { match.class = "localsend_app";             float = true; center = true; }
  { match.class = "Yad";                       float = true; center = true; }
  { match.class = "de.haeckerfelix.Fragments"; float = true; center = true; }
  { match.class = "com.saivert.pwvucontrol";   float = true; center = true; }
  { match.class = ".blueman-manager-wrapped";  float = true; center = true; }
  { match.class = ".Telegram-wrapped";         float = true; center = true; }

  {
    match.class = "resourceMonitor";
    float = true; center = true; size = lib.generators.mkLuaInline "{1200, 900}";
  }
  {
    match.class = "clipse";
    float = true; center = true; size = lib.generators.mkLuaInline "{800, 800}";
  }

  { match.class = ".*"; suppress_event = "maximize"; }
  { match.class = "com.gabm.satty"; animation = "popin"; }
];

}
