{ pkgs, ... }:{

home.packages = with pkgs; [
  texliveFull
  tectonic
];

}
