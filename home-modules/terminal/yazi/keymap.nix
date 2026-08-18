{

programs.yazi.keymap = {
  mgr.prepend_keymap = [
    {
      on   = [ "g" "l" ];
      run  = "plugin lazygit";
      desc = "run lazygit";
    }
    {
      on   = [ "п" "п" ];
      run  = "plugin gitu";
      desc = "ru: run gitu";
    }
    {
      on   = [ "g" "g" ];
      run  = "plugin gitu";
      desc = "run gitu";
    }

    {
      on   = "<Enter>";
      run  = "plugin smart-enter";
      desc = "Enter directory or open file";
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
