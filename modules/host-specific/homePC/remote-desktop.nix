{ pkgs, ... }:{

environment.systemPackages = [
  pkgs.sunshine # Server for remote  streaming
  pkgs.stash    # No comments
];

}
