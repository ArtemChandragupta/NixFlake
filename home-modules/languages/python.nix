{ pkgs, ... }:{

home.packages = with pkgs; [
  (python3.withPackages (ps: with ps; [
    jupyterlab
    matplotlib

    numpy # these two are
    scipy # probably redundant to pandas
    pandas
    statsmodels
    scikitlearn
  ]))
];

}
