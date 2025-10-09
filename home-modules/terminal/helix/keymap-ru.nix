{

programs.helix.settings.keys = {
  normal = {
    "й" = [":quit"];
    "н" = ["yank_to_clipboard"];
    "в" = [
      "yank_to_clipboard"        
      "delete_selection_noyank"
    ];
    "C-е" = [ ":! zathura main.pdf &" ];

    "ш"   = ["insert_mode"];
    "Ж"   = ["command_mode"];
    "м"   = ["select_mode"];
    
    "C-с" = ["toggle_comments"];
    "ч"   = ["extend_line_below"];
    "Ч"   = [
      "extend_line_up"
      "extend_to_line_bounds"
    ];
  };
  select = {
    "н" = ["yank_to_clipboard"];
    "в" = [
      "yank_to_clipboard"        
      "delete_selection_noyank"
    ];
  };
  insert = {
    "C-м" = [ "paste_clipboard_before" ];
  };
};

}
