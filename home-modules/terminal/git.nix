{

programs = {
  git = {
    enable    = true;
    userName  = "ArtemChandragupta";
    userEmail = "artem020503@gmail.com";
    diff-so-fancy.enable = true;
  };
  gh = {
    enable = true;
    gitCredentialHelper.enable = true;
  };
  lazygit = {
    enable  = true;
    settings = {
      git.paging.pager = "diff-so-fancy";
      gui = {
        nerdFontsVersion = "3";
        border = "single";
        spinner = {
          frames = [ "⠋" "⠙" "⠩" "⠸" "⠼" "⠴" "⠦" "⠧" ];
          rate = 60;
        };
        showCommandLog = false;
        showPanelJumps = false;
        # showBottomLine = false;
      };
    };
  };
};

}
