{ pkgs, config, ... }:
{
  programs.lf = {

    enable = true;

    settings = {
      preview = true;
      hidden = true;
      drawbox = true;
      # icons = true;
    };

    commands = {
      editor-open = ''$$EDITOR $f'';
      mkdir = ''
      ''${{
        printf "Directory Name: "
        read DIR
        mkdir $DIR
      }}
      '';
    };

    keybindings = {
      "<enter>" = "editor-open";
      m = "";
      md = "mkdir";
    };
  };
}
