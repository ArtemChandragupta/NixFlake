{ pkgs, ... }:{

programs = {
  git = {
    enable = true;
    settings = {
      user.name  = "ArtemChandragupta";
      user.email = "artem020503@gmail.com";
      init.defaultBranch = "main";
    };
    signing.format = null; # For hm less then 25.05
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
        theme.optionsTextColor = [ "default" ];
      };
    };
  };
};

home = {
  packages = [ pkgs.gitu ];
  file.".config/gitu/config.toml".text = /*toml*/''
[style]
selection_line = {}
selection_area = { bg = "#3c3836" }

[bindings]
root.toggle_section = ["left","right","tab","space"]
root.move_up_line = ["up"]
root.move_down_line = ["down"]
root.move_up = ["ctrl+up"]
root.move_down = ["ctrl+down"]
root.unstage = ["S"]
root.stage = ["s"]
root.discard = ["d"]
    '';
};

}
