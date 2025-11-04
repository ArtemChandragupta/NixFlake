{

programs = {
  git = {
    enable = true;
    settings = {
      user.name  = "ArtemChandragupta";
      user.email = "artem020503@gmail.com";
      init.defaultBranch   = "main";
    };
  };
  diff-so-fancy = {
    enable = true;
    enableGitIntegration = true;
  };
  gh = {
    enable = true;
    gitCredentialHelper.enable = true;
  };
  lazygit = {
    enable = true;
    settings = {
      git.pagers = [{ pager = "diff-so-fancy"; }];
      gui = {
        nerdFontsVersion = "3";
        border = "single";
        spinner = {
          frames = [ "⠋" "⠙" "⠩" "⠸" "⠼" "⠴" "⠦" "⠧" ];
          rate = 60;
        };
        showCommandLog = false;
        showPanelJumps = false;
      };
    };
  };
};

}
