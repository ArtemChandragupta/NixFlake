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
        format = "  ╭───────────╮";
      }
      {
        type = "os";
        key = "  {#0}│ {#blue}  {#0}distro │";
        outputColor = "blue";
      }
      {
        type = "kernel";
        key = "  {#0}│ {#white}󰌽  {#0}kernel │";
        outputColor = "white";
      }
      {
        type = "packages";
        key = "  {#0}│ {#yellow}󰏖  {#0}pkgs   │";
        outputColor = "yellow";
      }
      {
        type = "shell";
        key = "  {#0}│ {#green}  {#0}shell  │";
        outputColor = "green";
      }
      {
        type = "terminal";
        key = "  {#0}│ {#magenta}  {#0}term   │";
        outputColor = "magenta";
      }
      {
        type = "custom";
        format = "  ├───────────┤";
      }
      {
        type = "wm";
        key = "  {#0}│ {#blue}󰨇  {#0}wm     │";
        outputColor = "blue";
      }
      {
        type = "lm";
        key = "  {#0}│ {#yellow}  {#0}dm     │";
        outputColor = "yellow";
      }
      {
        type = "terminalfont";
        key = "  {#0}│ {#magenta}  {#0}font   │";
        outputColor = "magenta";
      }
      {
        type = "theme";
        key = "  {#0}│ {#green}󰉼  {#0}theme  │";
        outputColor = "green";
      }
      {
        type = "icons";
        key = "  {#0}│ {#cyan}󰀻  {#0}icons  │";
        outputColor = "cyan";
      }
      {
        type = "cursor";
        key = "  {#0}│ {#blue}󰇀  {#0}cursor │";
        outputColor = "blue";
      }
      {
        type = "custom";
        format = "  ├───────────┤";
      }
      {
        type = "host";
        key = "  {#0}│ {#bright_blue}󰌢  {#0}host   │";
        outputColor = "bright_blue";
      }
      {
        type = "cpu";
        key = "  {#0}│ {#bright_green}  {#0}cpu    │";
        outputColor = "bright_green";
      }
      {
        type = "gpu";
        key = "  {#0}│ {#red}󰖂  {#0}gpu    │";
        outputColor = "red";
      }
      {
        type = "disk";
        key = "  {#0}│ {#bright_cyan}  {#0}disk   │";
        outputColor = "bright_cyan";
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
        key = "  {#0}│ {#green}󰅐  {#0}uptime │";
        outputColor = "green";
      }
      {
        type = "custom";
        format = "  ╰───────────╯";
      }
    ];
  };
};

}
