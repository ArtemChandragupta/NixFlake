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
    on = "<C-n>";
    run = ''
      shell 'bash -c "ripdrag -x -n -i -s 360 \"$1\" &"' --confirm
    '';
  }
  { # I escape to bash from nushell to get background tasks
    on = "<C-m>";
    # run = ''
    #   shell 'bash -c "ripdrag -tx &" | cp $in (pwd)' --confirm
    # '';
    run = ''
      shell 'bash -c "ripdrag -tx &" | cp $in (pwd)' --block 
    '';
  }
];

}
