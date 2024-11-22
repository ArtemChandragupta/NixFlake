{ pkgs, ... }:
let
  tex = (pkgs.texlive.combine {
    inherit (pkgs.texlive) scheme-medium

    biblatex-gost biblatex biber # for bibleography
    csquotes  # quotes for references
    wrapfig   # smthng for images
    amsmath   # math
    fancyhdr  # for footers
    multirow  # good tables
    titlesec  # for section titles
    tocvsec2  # for tables
    chngcntr  # for counters
    listings  # for code blocks
    fancyvrb  # for centered monospace element
    hyperref; # links
  });
in {

home.packages = with pkgs; [
  tex # Runtime
  texmaker
  setzer
  typst
];

}
