{
  programs.helix.settings.keys = {
    normal = {
      "y" = ["yank_to_clipboard"];
      "d" = [
        "yank_to_clipboard"        
        "delete_selection_noyank"
      ];
      "C-g" = [
        ":write-all"
        ":new"
        ":insert-output lazygit"
        ":buffer-close!"
        ":redraw"
        ":reload-all"
      ];
      "C-t" = [ ":! zathura main.pdf &" ];
    };
    select = {
      "y" = [ "yank_to_clipboard" ];
      "d" = [
        "yank_to_clipboard"        
        "delete_selection_noyank"
      ];
    };
    insert = {
      "C-v" = [ "paste_clipboard_before" ];
    };
  };
}
