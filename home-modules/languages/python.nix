{ pkgs, ... }:{

home.packages = with pkgs; [
  (python3.withPackages (ps: with ps; [
    jupyterlab # Notebooks
    matplotlib # Mathematical plotting

    numpy # these two are
    scipy # probably redundant to pandas
    pandas
    statsmodels
    scikitlearn
  ]))
];

}
