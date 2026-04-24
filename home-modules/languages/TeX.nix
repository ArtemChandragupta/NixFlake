{ pkgs, var, ... }:{

home.packages = if var.host == "homePC" then [
  pkgs.texliveMedium
  pkgs.asymptote
] else [];

}
