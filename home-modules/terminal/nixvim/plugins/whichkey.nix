{

programs.nixvim.plugins = {
  which-key = {
    enable = true;
    settings = {
      preset = "helix";
      win.border = "single";
      triggers = [
        {
          __unkeyed-1 = "<auto>";
          mode = "nso";
        }
      ];
    };
  };
};

}
