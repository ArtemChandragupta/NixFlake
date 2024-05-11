{
  home.file = {
".config/mako/config".text = ''
        font=monospace 10
        #format=<b>%a ⏵</b> %s\n%b
        format=<b>%s</b>\n%b
        layer=overlay
        anchor=top-right
        background-color=#282828
        text-color=#ebdbb2
        width=300
        height=110
        margin=10
        padding=5
        border-size=0
        border-color=#b8bb26
        border-radius=10
        max-icon-size=64
        default-timeout=5000
        ignore-timeout=1

        [urgency=normal]
        border-color=#b8bb26

        [urgency=high]
        border-color=#D82A57
        default-timeout=0
      '';
  };
}
