{ pkgs, config, ... }:
{
  xdg.configFile."lf/icons".source = ./icons;

  programs.lf = {

    enable = true;

    settings = {
      preview = true;
      hidden = true;
      drawbox = true;
      icons = true;
    };

    commands = {

      editor-open = ''$$EDITOR $f'';

      zathura = ''zathura "$f"'';

      op = ''
      ''${{
        case $(file --mime-type -bL -- "$f") in
          text/*|application/json)
            lf -remote "send $id \$$EDITOR \$fx" ;;
          image/*)
            imv $fx ;;
          audio/*)
            mpv --no-terminal $fx ;;
          video/*)
            mpv --no-terminal "$f" ;;
          application/pdf|application/epub+zip)
            zathura "$f" ;;
          *)
            for f in $fx; do
                xdg-open "$f" > /dev/null 2>&1 &
            done ;;
        esac
      }}
      '';

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

      unarchive = ''
      ''${{
        case "$f" in 
          *.zip) unzip "$f" ;;
          *) echo "Unsupported format" ;;
        esac 
      }}
      '';

      zip = ''
      ''${{
        printf "Archive Name with .zip:"
        read NAME
        zip $NAME $f
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
      au = "unarchive";
      az = "zip";
      r = "rename";
      mz = "zathura";
      mp = "op";
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
