{ pkgs, ... }:
let
  tex = (pkgs.texlive.combine {
    inherit (pkgs.texlive) scheme-medium
    
    biblatex-gost biblatex biber # for bibleography
    csquotes # quotes for references
    wrapfig  # smthng for images
    amsmath  # math
    hyperref; # links
  });
in {

home.packages = with pkgs; [
  tex # Runtime
];

}
