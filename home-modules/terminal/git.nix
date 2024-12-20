{ pkgs, ... }:{

home.packages = [ pkgs.gh ];

programs = {
  git = {
    enable = true;
    userName  = "ArtemChandragupta";
    userEmail = "artem020503@gmail.com";
  };
  lazygit = {
    enable = true;
  };
  gitui = {
    enable = true;
  };
};

}
