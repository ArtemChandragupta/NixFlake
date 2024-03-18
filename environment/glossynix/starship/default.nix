{
programs.starship.enable = true;
programs.starship.settings = {
  
  format = "[](color_blue)\$os\$username\[](bg:color_green fg:color_blue)\$directory\[](fg:color_green bg:color_aqua)\$git_branch\$git_status\[](fg:color_aqua bg:color_blue)\$c\$rust\$golang\$nodejs\$php\$java\$kotlin\$haskell\$python\[](fg:color_blue bg:color_bg3)\$docker_context\[](fg:color_bg3 bg:color_bg1)\$time\[ ](fg:color_bg1)\$line_break$character ";
  
  palette = "gruvbox_dark";
  
  palettes.gruvbox_dark = {
    color_fg0    = "#fbf1c7";
    color_bg1    = "#3c3836";
    color_bg3    = "#665c54";
    color_blue   = "#458588";
    color_aqua   = "#689d6a";
    color_green  = "#98971a";
    color_orange = "#d65d0e";
    color_purple = "#b16286";
    color_red    = "#cc241d";
    color_yellow = "#d79921";
  };
  
  os = {
    disabled = false;
    style    = "bg:color_blue fg:color_fg0";
  };
  
  os.symbols = {
    NixOS            = "";
    Raspbian         = "󰐿";
    Mint             = "󰣭";
    Fedora           = "󰣛";
  };
  
  username = {
    show_always = true;
    style_user  = "bg:color_blue fg:color_fg0";
    style_root  = "bg:color_blue fg:color_fg0";
    format      = "[ $user ]($style)";
  };
  
  directory = {
    style             = "fg:color_fg0 bg:color_green";
    format            = "[ $path ]($style)";
    truncation_length = 3;
    truncation_symbol = "…/";
  };
  
  directory.substitutions = {
    "Documents" = "󰈙 ";
    "Downloads" = " ";
    "Music"     = "󰝚 ";
    "Pictures"  = " ";
    "Developer" = "󰲋 ";
  };
  
  git_branch = {
    symbol = "";
    style  = "bg:color_aqua";
    format = "[[ $symbol $branch ](fg:color_fg0 bg:color_aqua)]($style)";
  };
  
  git_status = {
    style  = "bg:color_aqua";
    format = "[[($all_status$ahead_behind )](fg:color_fg0 bg:color_aqua)]($style)";
  };
  
  time = {
    disabled    = false;
    time_format = "%R";
    style       = "bg:color_bg1";
    format      = "[[  $time ](fg:color_fg0 bg:color_bg1)]($style)";
  };
  
  line_break = {
    disabled = false;
  };
  
  character = {
    disabled = false;
    success_symbol            = "[](bold fg:color_green)";
    error_symbol              = "[](bold fg:color_red)";
    vimcmd_symbol             = "[](bold fg:color_green)";
    vimcmd_replace_one_symbol = "[](bold fg:color_purple)";
    vimcmd_replace_symbol     = "[](bold fg:color_purple)";
    vimcmd_visual_symbol      = "[](bold fg:color_yellow)";
  };
};

}
