{

programs.helix.settings.keys = {
  normal = {
    "y" = "yank_main_selection_to_clipboard";
    "Y" = ":sh zellij run -fc -- yazi";
  };
  select = {
    "y" = "yank_main_selection_to_clipboard";
  };
  insert = {
    "C-v" = "paste_clipboard_before";
  };
};

}
