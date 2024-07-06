{

programs.yazi.keymap.manager.prepend_keymap = [
  {
    on = [ "<C-y>" ];
    run = [
      ''shell --confirm 'for path in "$@"; do echo "file://$path"; done | wl-copy -t text/uri-list' ''
    ];
  }

  {
    on = [ "<Enter>" ];
    run = "plugin --sync smart-enter";
    desc = "Enter the child directory, or open the file";
  }
];

}
