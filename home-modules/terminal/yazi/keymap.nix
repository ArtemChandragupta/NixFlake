{

programs.yazi.keymap.manager.prepend_keymap = [
  {
    on   = "<Enter>";
    run  = "plugin --sync smart-enter";
    desc = "Enter directory or open file";
  }
  {
    on   = "<Esc>";
    run  = "close";
    desc = "Cancel input";
  }
  {
    on = "<C-n>";
    run = /*sh*/''
      shell 'dragon -x -i -T "$1"' --confirm
    '';
  }
];

}
