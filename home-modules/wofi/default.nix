{

programs.wofi = {
  enable = true;
  settings = {
    prompt = "Clipboard history";
    hide_scroll = true;
    no_actions = true;
    insensetive = true;
    line_wrap = "word_char";
    dynamic_lines = true;
  };
};

home.file.".config/wofi/style.css".text = builtins.readFile ( ./style.css );

}
