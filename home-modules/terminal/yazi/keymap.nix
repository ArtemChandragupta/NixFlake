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
  {
    on = "<C-n>";
    run = ''
      shell 'ripdrag -x -n -i -s 360 "$1"' --confirm
    '';
  }
];

}
