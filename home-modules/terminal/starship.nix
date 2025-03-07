{ lib, ... }:{

programs.starship = {
  enable = true;
  settings = {
    format = lib.concatStrings [
      "[](#458588)" "[󰘳](bg:#458588 fg:#282828)"
      "$username"
      "[](bg:#83a598 fg:#458588)"
      "$directory"
      "[](fg:#83a598 bg:#458588)"
      "$git_branch" "$git_status"
      "[](fg:#458588 bg:#665c54)"
      "$nodejs" "$haskell" "$python"
      "[](fg:#665c54 bg:#3c3836)"
      "$time"
      "[](fg:#3c3836)"
      "$line_break$character "
    ];

    username = {
      show_always = true;
      style_user = "bg:#458588 fg:#282828";
      style_root = "bg:#458588 fg:#cc241a";
      format = "[ $user ]($style)";
    };

    directory = {
      style  = "fg:#282828 bg:#83a598";
      format = "[ $path ]($style)";
      truncation_length = 3;
      truncation_symbol = "…/";
    };

    git_branch = {
      symbol = "";
      style  = "bg:#458588";
      format = "[[ $symbol $branch ](fg:#fbf1c7 bg:#458588)]($style)";
    };
    git_status = {
      style  = "bg:#458588";
      format = "[[($all_status$ahead_behind )](fg:#fbf1c7 bg:#458588)]($style)";
    };

    time = {
      disabled = false;
      time_format = "%R";
      style  = "bg:#3c3836";
      format = "[[  $time ](fg:#fbf1c7 bg:#3c3836)]($style)";
    };

    character = {
      success_symbol = "[>>-](bold fg:#98971a)";
      error_symbol   = "[-<<](bold fg:#cc241a)";
    };

    nodejs = {
      symbol = " ";
      style  = "bg:#665c54";
      format = ''[[ $symbol( $version) ](fg:#fbf1c7 bg:#665c54)]($style)'';
    }; 
    haskell = {
      symbol = "";
      style  = "bg:#665c54";
      format = ''[[ $symbol( $version) ](fg:#fbf1c7 bg:#665c54)]($style)'';
    };
    python = {
      symbol = "󰌠";
      style  = "bg:#665c54";
      format = ''[[ $symbol( $version) ](fg:#fbf1c7 bg:#665c54)]($style)'';
    };
  };
};

}
