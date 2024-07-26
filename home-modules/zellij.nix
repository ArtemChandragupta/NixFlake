{

programs.zellij.enable = true;

home.file.".config/zellij/config.kdl".text = /*json*/ ''
ui {
    pane_frames {
        rounded_corners true
    }
}

pane_frames false

themes {
    default {
        fg "#83a589"
        bg "#2E3440"
        black "#504945"
        red "#282828"
        green "#458588"
        yellow "#d79921"
        blue "#b8bb26"
        magenta "#b16286"
        cyan "#88C0D0"
        white "#282828"
        orange "#cc241d"
    }
}

'';

}
