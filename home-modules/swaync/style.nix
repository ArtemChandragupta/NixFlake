{ pkgs, ... }:{
  home.file.".config/swaync/style.css" = {
    text = ''
      * {
        font-family: monospace;
      }

      .control-center {
        background-color: #282828;
        opacity: 1;
      }
    '';
    onChange = "${pkgs.swaynotificationcenter}/bin/swaync-client --reload-config";
  };
}
