{

programs.yazi.keymap.manager.prepend_keymap = [
  {
    on = [ "<Enter>" ];
    run = "plugin --sync smart-enter";
    desc = "Enter the child directory, or open the file";
  }
  {
    on = [ "<Esc>" ];
    run = "close";
    desc = "Cancel input";
  }
];

}
