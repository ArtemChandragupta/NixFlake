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

  gh = {
    enable = true;
    gitCredentialHelper.enable = true;
  };

};

home = {
  packages = [ pkgs.gitu ];
  file.".config/gitu/config.toml".source = ./gitu.toml;
};

}
