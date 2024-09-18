{

programs.fastfetch = {
  enable = true;
  settings = {
    logo = null;
    display = {
      separator = " ";
    };
    modules = [
      {
        type = "custom";
        format = "  {#blue}╓╮╷┎╮╓╴ {#0}╭─╮╭─╮";
      }
      {
        type = "custom";
        format = "  {#blue}║╰┤╓╰╫╮ {#0}│ │╰─╮";
      }
      {
        type = "custom";
        format = "  {#blue}╜ └╜╶╜╰ {#0}╰─╯╰─╯";
      }
      {
        type = "custom";
        format = "  ╭───────────╮";
      }
      {
        type = "kernel";
        key = "  {#0}│ {#blue}󰌽  {#0}kernel │";
        outputColor = "blue";
      }
      {
        type = "packages";
        key = "  {#0}│ {#blue}󰏖  {#0}pkgs   │";
        outputColor = "blue";
      }
      {
        type = "shell";
        key = "  {#0}│ {#blue}  {#0}shell  │";
        outputColor = "blue";
      }
      {
        type = "terminal";
        key = "  {#0}│ {#blue}  {#0}term   │";
        outputColor = "blue";
      }
      {
        type = "custom";
        format = "  ├───────────┤";
      }
      {
        type = "wm";
        key = "  {#0}│ {#green}󰨇  {#0}wm     │";
        outputColor = "green";
      }
      {
        type = "lm";
        key = "  {#0}│ {#green}  {#0}dm     │";
        outputColor = "green";
      }
      {
        type = "terminalfont";
        key = "  {#0}│ {#green}  {#0}font   │";
        outputColor = "green";
      }
      {
        type = "theme";
        key = "  {#0}│ {#green}󰉼  {#0}theme  │";
        outputColor = "green";
      }
      {
        type = "icons";
        key = "  {#0}│ {#green}󰀻  {#0}icons  │";
        outputColor = "green";
      }
      {
        type = "cursor";
        key = "  {#0}│ {#green}󰇀  {#0}cursor │";
        outputColor = "green";
      }
      {
        type = "custom";
        format = "  ├───────────┤";
      }
      {
        type = "host";
        key = "  {#0}│ {#white}󰌢  {#0}host   │";
        outputColor = "white";
      }
      {
        type = "cpu";
        key = "  {#0}│ {#white}  {#0}cpu    │";
        outputColor = "white";
      }
      {
        type = "gpu";
        key = "  {#0}│ {#white}󰖂  {#0}gpu    │";
        outputColor = "white";
      }
      {
        type = "disk";
        key = "  {#0}│ {#white}  {#0}disk   │";
        outputColor = "white";
      }
      {
        type = "custom";
        format = "  ├───────────┤";
      }
      {
        type = "localip";
        key = "  {#0}│ {#magenta}󰩟  {#0}ip     │";
        format= "{ipv4} ({ifname})";
        outputColor = "magenta";
      }
      {
        type = "uptime";
        key = "  {#0}│ {#magenta}󰅐  {#0}uptime │";
        outputColor = "magenta";
      }
      {
        type = "custom";
        format = "  ╰───────────╯";
      }
    ];
  };
};

}
