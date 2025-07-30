{

programs.helix.settings.keys = {
  normal = {
    "q" = [":quit"];
    "y" = ["yank_to_clipboard"];
    "d" = [
      "yank_to_clipboard"        
      "delete_selection_noyank"
    ];
    g.g = [
      ":write-all"
      # ":! kitty @ launch --wait-for-child-to-exit --type=overlay --cwd=current lazygit"
      ":noop %sh{kitty @ launch --type=overlay --wait-for-child-to-exit --cwd $(pwd) lazygit}"
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
