{

programs.yazi.keymap.manager.prepend_keymap = [
  {
    on   = "<Enter>";
    run  = "plugin smart-enter";
    desc = "Enter directory or open file";
  }
  {
    on   = "<Esc>";
    run  = "close";
    desc = "Cancel input. Not working";
  }
  { # I escape to bash from nushell to get background tasks
    on   = "<C-n>";
    run  = ''shell 'bash -c "ripdrag -xnis 350 \"$1\" &"' --confirm'';
    desk = "Drag-and-drop";
  }
  {
    on   = "<C-S-y>";
    run  = ["shell 'echo \"$@\" | wl-copy'" "toggle_all --state=off"];
    desk = "Copy selected files path to system clipboard";
  }
  {
    on   = "<C-S-p>";
    run  = "shell 'paste' ";
    desk = "Paste files from path in system clipboard";
  }
];

}
