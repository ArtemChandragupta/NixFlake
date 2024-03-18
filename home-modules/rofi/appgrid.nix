{ username, ... }:{

  xdg.configFile."/home/${username}/.config/rofi/launchers/type-1/launcher.sh" = {
    executable = true;
    text = ''
    #!/usr/bin/env bash
#

    dir="$HOME/.config/rofi/launchers/type-1"
    theme='style-1'

    rofi \
      -show drun \
      -theme ''${dir}/''${theme}.rasi
    '';
  };

xdg.configFile."/home/${username}/.config/rofi/launchers/type-1/shared/colors.rasi".text = '' 
* {
    background:     #282828FF;
    background-alt: #353535FF;
    foreground:     #EBDBB2FF;
    selected:       #83A598FF;
    active:         #B8BB26FF;
    urgent:         #FB4934FF;
}
'';

xdg.configFile."/home/${username}/.config/rofi/launchers/type-1/shared/fonts.rasi".text = ''
* {
    font: "JetBrains Mono Nerd Font 10";
}
'';

xdg.configFile."/home/${username}/.config/rofi/launchers/type-1/style-1.rasi".text = ''

/*****----- Configuration -----*****/
configuration {
	modi:                       "drun";
    show-icons:                 true;
    display-drun:               "";
	drun-display-format:        "{name}";
}

/*****----- Global Properties -----*****/
@import                          "shared/colors.rasi"
@import                          "shared/fonts.rasi"

/*****----- Main Window -----*****/
window {
    transparency:                "real";
    location:                    center;
    anchor:                      center;
    fullscreen:                  true;
    width:                       1366px;
    height:                      768px;
    x-offset:                    0px;
    y-offset:                    0px;

    enabled:                     true;
    margin:                      0px;
    padding:                     0px;
    border:                      0px solid;
    border-radius:               0px;
    border-color:                @selected;
    background-color:            black / 80%;
    cursor:                      "default";
}

/*****----- Main Box -----*****/
mainbox {
    enabled:                     true;
    spacing:                     100px;
    margin:                      0px;
    padding:                     100px 225px;
    border:                      0px solid;
    border-radius:               0px 0px 0px 0px;
    border-color:                @selected;
    background-color:            transparent;
    children:                    [ "inputbar", "listview" ];
}

/*****----- Inputbar -----*****/
inputbar {
    enabled:                     true;
    spacing:                     10px;
    margin:                      0% 25%;
    padding:                     18px;
    border:                      0px solid;
    border-radius:               10px;
    border-color:                @selected;
    background-color:            white / 16%;
    text-color:                  @foreground;
    children:                    [ "prompt", "entry" ];
}

prompt {
    enabled:                     true;
    background-color:            transparent;
    text-color:                  inherit;
}
textbox-prompt-colon {
    enabled:                     true;
    expand:                      false;
    str:                         "::";
    background-color:            transparent;
    text-color:                  inherit;
}
entry {
    enabled:                     true;
    background-color:            transparent;
    text-color:                  inherit;
    cursor:                      text;
    placeholder:                 "Search";
    placeholder-color:           inherit;
}

/*****----- Listview -----*****/
listview {
    enabled:                     true;
    columns:                     8;
    lines:                       4;
    cycle:                       true;
    dynamic:                     true;
    scrollbar:                   false;
    layout:                      vertical;
    reverse:                     false;
    fixed-height:                true;
    fixed-columns:               true;
    
    spacing:                     0px;
    margin:                      0px;
    padding:                     0px;
    border:                      0px solid;
    border-radius:               0px;
    border-color:                @selected;
    background-color:            transparent;
    text-color:                  @foreground;
    cursor:                      "default";
}
scrollbar {
    handle-width:                5px ;
    handle-color:                @selected;
    border-radius:               0px;
    background-color:            @background-alt;
}

/*****----- Elements -----*****/
element {
    enabled:                     true;
    spacing:                     15px;
    margin:                      0px;
    padding:                     35px 10px;
    border:                      0px solid;
    border-radius:               15px;
    border-color:                @selected;
    background-color:            transparent;
    text-color:                  @foreground;
    orientation:                 vertical;
    cursor:                      pointer;
}
element normal.normal {
    background-color:            transparent;
    text-color:                  @foreground;
}
element selected.normal {
    background-color:            white / 16%;
    text-color:                  @foreground;
}
element-icon {
    background-color:            transparent;
    text-color:                  inherit;
    size:                        72px;
    cursor:                      inherit;
}
element-text {
    background-color:            transparent;
    text-color:                  inherit;
    highlight:                   inherit;
    cursor:                      inherit;
    vertical-align:              0.5;
    horizontal-align:            0.5;
}

/*****----- Message -----*****/
error-message {
    padding:                     100px;
    border:                      0px solid;
    border-radius:               0px;
    border-color:                @selected;
    background-color:            black / 10%;
    text-color:                  @foreground;
}
textbox {
    background-color:            transparent;
    text-color:                  @foreground;
    vertical-align:              0.5;
    horizontal-align:            0.0;
    highlight:                   none;
}
'';
  
}
