{ pkgs, ... }:{

home.packages = with pkgs; [
  (python3.withPackages (ps: with ps; [
    jupyterlab # Notebooks
    matplotlib # Mathematical plotting
    networkx   # For tubes

    numpy # These two are
    scipy # Probably redundant to pandas

    pandas     # Data manipulation
    openpyxl   # excel
  ]))
];

}
