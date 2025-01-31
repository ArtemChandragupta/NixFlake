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
    desc = "Cancel input";
  }
  { # I escape to bash from nushell to get background tasks
    on  = "<C-n>";
    run = ''
      shell 'bash -c "ripdrag -xnis 350 \"$1\" &"' --confirm
    '';
  }
  {
    on  = "<C-y>";
    run = [
      ''shell 'echo "$@" | wl-copy' ''
      ''toggle_all --state=off''
    ];
  }
  {
    on  = "<C-p>";
    run = ''shell 'nu -c "paste" ' '';
  }
];

}
