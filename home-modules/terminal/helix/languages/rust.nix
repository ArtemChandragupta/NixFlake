{ pkgs, ... }:{

programs.helix = {
  extraPackages = [ pkgs.rust-analyzer ];
  languages.language-server.rust-analyzer.config.check = {
    command = "clippy";
  };
};

}
