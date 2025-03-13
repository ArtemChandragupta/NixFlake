{

programs.nixvim.plugins = {
  blink-cmp = {
    enable = true; # Completion
    settings = {
      completion = {
        menu = {
          # auto_show = false;
          border = "single";
        };
      };
    };
  };
};

}
