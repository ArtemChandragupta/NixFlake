{ pkgs, ... }:{
  home = {
    file.".config/swaync/style.css".text = ''
      * {
        font-family: monospace;
      }

      .widget-buttons-grid .text-button,
      .widget-mpris-player,
      .control-center,
      .control-center-clear-all,
      .notification {
        border: 0px solid #000000;
        border-radius: 10px;
      }
      .control-center {
        margin-top: 10px;
        margin-bottom: 10px;
        margin-right: 10px;
        background-color: #282828;
      }
      .widget-dnd,
      .widget-title {
        color: #000000;
        font-size: 16px;
        font-weight: bold;
      }
      .widget-dnd>switch {
        border-radius: 5px;
        background: #665c54;
        border: 3px solid #000000;
      }

      .widget-dnd>switch:checked {
        background: #cc241d;
      }

      .widget-dnd>switch slider {
        background: #000000;
        border-radius: 3px
      }

      .widget-mpris-player {
        background-color: #458588;
      }

      .widget-mpris-album-art {
        box-shadow: none;
      }

      .widget-mpris>.horizontal>.image-button {
        margin-top: 60px;
        margin-bottom: 60px;
        border-radius: 15px;
        border-top-left-radius: 0;
        border-bottom-left-radius: 0;
        border: 5px solid #000000;
        border-left: none;
        background-color: #076678;
      }

      .widget-mpris>.horizontal>.image-button:nth-child(3) {
        border-radius: 15px;
        border-top-right-radius: 0;
        border-bottom-right-radius: 0;
        border: 5px solid #000000;
        border-right: none;
      }

      .widget-buttons-grid {
        background: none;
        padding: 0px 10px;
        margin-top: 1px;
      }

      /* move buttons grid 20px up if there's the mpris player above it */
      .widget-mpris+.widget-buttons-grid {
        margin-top: -20px;
      }

      .widget-buttons-grid .text-button {
        background-color: #cc241d;
        font-size: 20px;
      }

      .widget-buttons-grid .text-button:hover {
        background-color: #fb4939;
      }

      .control-center-clear-all {
        background-color: #8f3f71;
      }

      .control-center-clear-all:hover {
        background-color: #b16286;
      }

      /* The "No Notifications" text and image */
      .control-center-list-placeholder {
        color: #83a599;
      }

      /* Notification popup styling follows. */
      .notification {
        border: 0px solid #000000;
        background-color: #d79921;
      }

      .control-center .notification {
        background-color: #af3a03;
      }

      .body,
      .summary,
      .notification-action {
        color: #000000;
      }

      .control-center .body,
      .control-center .summary,
      .control-center .notification-action {
        color: #83a598;
      }

      .notification-action {
        border-color: #000000;
      }

      .notification-action:hover {
        border-bottom-left-radius: 6px;
        border-bottom-right-radius: 6px;
        background-color: #fabd2f;
      }

      .notification-default-action:hover {
        border-top-left-radius: 6px;
        border-top-right-radius: 6px;
        background-color: #fabd2f;
      }

      .control-center .notification-action:hover {
        background-color: #d65d0e;
      }

      .control-center .notification-default-action:hover {
        background-color: #d65d0e;
      }

      .close-button {
        border: 0px solid #000000;
        border-radius: 10px;
        margin: 6px;
        padding: 0px;
        background-color: #cc241d;
        color: #000000;
      }

      .close-button:hover {
        background-color: #fb4934;
      }

      .time {
        margin-right: 40px;
      }

      .notification-group-header,
      .notification-group-icon {
        color: #000000;
      }

      .notification-group-close-all-button,
      .notification-group-collapse-button {
        border: 0px solid #000000;
        border-radius: 10px;
        padding: 2px;
        margin: 3px;
        color: #000000;
      }

      .notification-group-close-all-button {
        background-color: #cc241d;
      }

      .notification-group-collapse-button {
        background-color: #458588;
      }
    '';
  
    file.".config/swaync/config.json".text = ''
    {
      "$schema": "/etc/xdg/swaync/configSchema.json",
      "positionX": "right",
      "positionY": "top",
      "layer": "overlay",
      "control-center-layer": "top",
      "layer-shell": true,
      "cssPriority": "application",
      "control-center-margin-top": 0,
      "control-center-margin-bottom": 0,
      "control-center-margin-right": 0,
      "control-center-margin-left": 0,
      "notification-2fa-action": true,
      "notification-inline-replies": false,
      "notification-icon-size": 24,
      "notification-body-image-height": 100,
      "notification-body-image-width": 200,
      "timeout": 6,
      "timeout-low": 3,
      "timeout-critical": 0,
      "fit-to-screen": false,
      "control-center-width": 460,
      "control-center-height": 1027,
      "notification-window-width": 400,
      "keyboard-shortcuts": true,
      "image-visibility": "when-available",
      "transition-time": 200,
      "hide-on-clear": false,
      "hide-on-action": true,
      "script-fail-notify": true,
      "widgets": [
        "dnd",
        "mpris",
        "buttons-grid",
        "title",
        "notifications"
      ],
      "widget-config": {
        "title": {
          "text": "Notifications",
          "clear-all-button": true,
          "button-text": "Clear"
        },
        "dnd": {
          "text": "Do Not Disturb"
        },
        "label": {
          "max-lines": 3,
          "text": "Notification"
        },
        "mpris": {
          "image-size": 60,
          "image-radius": 10
        },
        "buttons-grid": {
          "actions": [
            {
              "label": "󰌾",
              "command": "swaylock -f"
            },
            {
              "label": "󰒲",
              "command": "systemctl hibernate"
            },
            {
              "label": "󰜉",
              "command": "systemctl reboot"
            },
            {
              "label": "󰐥",
              "command": "systemctl poweroff"
            }
          ]
        }
      }
    }
    '';
  };
}
