{ pkgs }:

pkgs.writeShellScriptBin "wallpaper" ''

    wallpaper_dir="./.wallpapers"
    
    for display in $(${pkgs.wlr-randr}/bin/wlr-randr | awk '/^[^ ]+ / {print $1}'); do
        random_wallpaper=$(${pkgs.fd}/bin/fd -e png -e jpg . "$wallpaper_dir" | sort -R | head -n 1)
        ${pkgs.swww}/bin/swww img -o "$display" "$random_wallpaper"
    done
    
''


