{ pkgs, config, ... }:
{
#  xdg.configFile."lf/icons".source = ./icons;

  programs.lf = {

    enable = true;

    settings = {
      preview = true;
      hidden = true;
      drawbox = true;
 #     icons = true;
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

      mkfile = ''
      ''${{
        printf "File Name: "
        read FILE
        $EDITOR $FILE
      }}
      '';

      delete = ''
      ''${{
      rm -rf $fx
      }}
      '';
    };

    keybindings = {
      "<enter>" = "editor-open";
      m = "";
      md = "mkdir";
      mf = "mkfile";
      "<delete>" = "delete";
    };

    extraConfig = let
      previewer = pkgs.writeShellScriptBin "pv.sh" ''
        file=$1
        w=$2
        h=$3
        x=$4
        y=$5

        if [[ "$( ${pkgs.file}/bin/file -Lb --mime-type "$file")" =~ ^image ]]; then
            ${pkgs.kitty}/bin/kitty +kitten icat --silent --stdin no --transfer-mode file --place "''${w}x''${h}@''${x}x''${y}" "$file" < /dev/null > /dev/tty
            exit 1
        fi

        ${pkgs.pistol}/bin/pistol "$file"
      '';
      cleaner = pkgs.writeShellScriptBin "clean.sh" ''
        ${pkgs.kitty}/bin/kitty +kitten icat --clear --stdin no --silent --transfer-mode file < /dev/null > /dev/tty
      '';
    in ''
      set previewer ${previewer}/bin/pv.sh
      set cleaner ${cleaner}/bin/clean.sh
    '';
  };
}
