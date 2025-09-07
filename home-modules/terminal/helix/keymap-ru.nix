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
    "C-с" = ["toggle_comments"];
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
