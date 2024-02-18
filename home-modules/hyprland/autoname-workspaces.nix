{
home.file.".config/hyprland-autoname-workspaces/config.toml".text = ''

version = "1.1.11"	

          [class]
          "Minecraft.*" = "󰍳 "         
          "libreoffice*" = "󰈙 "
          DEFAULT = " "
          Wofi = " "
          obsidian = " "
          discord = "󰙯 "
          firefox = " "
          kitty = " "
          mpv = " "
          vimiv = " "
          virt-manager = " "
          xdg-desktop-portal-gtk = "󱈄"
          ".*transmission.*" = ""
          
          [class_active]

          [initial_class]
          
          [initial_class_active]

          [workspaces_name]

          [title_in_class]

          [title_in_class_active]

          [title_in_initial_class]

          [title_in_initial_class_active]

          [initial_title_in_class]

          [initial_title_in_class_active]

          [initial_title_in_initial_class]

          [initial_title_in_initial_class_active]

          [exclude]
          "" = "^$"

          [format]
          dedup = true
          dedup_inactive_fullscreen = false
          delim = " "
          workspace = "{id}:{delim}{clients}"
          workspace_empty = "{id}"
          client = "{icon}"
          client_fullscreen = "[{icon}]"
          client_active = "{icon}"
          client_dup = "{icon}{counter_sup}"
          client_dup_active = "*{icon}*{delim}{icon}{counter_unfocused_sup}"
          client_dup_fullscreen = "[{icon}]{delim}{icon}{counter_unfocused_sup}"
'';
}
