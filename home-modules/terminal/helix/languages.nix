{ pkgs, ... }:{

programs.helix = {
  extraPackages = with pkgs; [
    nil
    tinymist
    rust-analyzer
    vscode-langservers-extracted
    ruff
  ];
  languages.language = [
  ];
};

}
