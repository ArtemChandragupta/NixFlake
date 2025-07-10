{

programs.yazi.keymap = {
  mgr.prepend_keymap = [
    {
      on   = [ "g" "g" ];
      run  = "plugin lazygit";
      desc = "run lazygit";
    }
    {
      on   = [ "п" "п" ];
      run  = "plugin lazygit";
      desc = "ru: run lazygit";
    }

    {
      on   = "<Enter>";
      run  = "plugin smart-enter";
      desc = "Enter directory or open file";
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
    {
      on   = "C";
      run  = "plugin ouch --args=zip";
      desc = "Compress with ouch";
    }

    {
      on   = "й";
      run  = "quit";
      desc = "ru: quit";
    }
    {
      on   = "м";
      run  = "visual_mode";
      desc = "ru: visual mode enter";
    }
    {
      on   = "н";
      run  = "yank";
      desc = "ru: yank";
    }
    {
      on   = "Н";
      run  = "unyank";
      desc = "ru: unyank";
    }
    {
      on   = "ч";
      run  = "yank --cut";
      desc = "ru: cut";
    }
    {
      on   = "Ч";
      run  = "unyank";
      desc = "ru: uncut";
    }
    {
      on   = "з";
      run  = "paste";
      desc = "ru: paste";
    }
    {
      on   = "в";
      run  = "remove";
      desc = "ru: trash";
    }
    {
      on   = "В";
      run  = "remove --permanently";
      desc = "ru: delete";
    }
  ];
  input.prepend_keymap = [
    {
      on   = "<Esc>";
      run  = "close";
      desc = "Cancel input";
    }
  ];
};

}
