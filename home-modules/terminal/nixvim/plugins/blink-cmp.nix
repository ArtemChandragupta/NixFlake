{

programs.nixvim.plugins = {
  blink-cmp = {
    enable = true;

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
